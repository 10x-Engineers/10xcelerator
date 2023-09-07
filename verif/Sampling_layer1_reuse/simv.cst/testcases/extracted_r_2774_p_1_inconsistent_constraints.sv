class c_2774_1;
    integer i = -461;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2774_1;
    c_2774_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0110z010x1xzxx000zz011xzz0x000zzxzzxzxzxxzxzxzxzzzxzzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
