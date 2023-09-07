class c_2046_1;
    integer i = -339;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2046_1;
    c_2046_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z0x01x0zz0zzzz0z0x1zx1z0z0000zzxxxxxxzxzzxxzxzxxzxxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
