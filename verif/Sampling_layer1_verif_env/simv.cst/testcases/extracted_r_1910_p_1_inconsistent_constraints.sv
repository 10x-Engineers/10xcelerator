class c_1910_1;
    integer i = -317;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1910_1;
    c_1910_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00xxz0xzx1xxx1z11z10z1zz11xx1zxzzzzxxzzxxxzxxxzxxzxzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
