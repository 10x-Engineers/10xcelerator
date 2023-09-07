class c_30_1;
    integer i = -3;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_30_1;
    c_30_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0z1101z1001x10x00x1z1xx1xx11xzxzxzxzzxzxxxxxxxzzzxxzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
