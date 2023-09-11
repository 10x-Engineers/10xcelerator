class c_2972_1;
    integer i = -494;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2972_1;
    c_2972_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01x11x0x1xxz0zzz00x10zxz0z00z1xzxxzxxzxzzxzxzzzxzxxzzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
