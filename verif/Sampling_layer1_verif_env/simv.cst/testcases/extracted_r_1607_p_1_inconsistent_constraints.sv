class c_1607_1;
    integer i = -266;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1607_1;
    c_1607_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xx1x1z1xx0111xz00zzzx101zz0z1zxxzzxxzzxzxzzzxzzxxzzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
