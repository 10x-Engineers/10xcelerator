class c_3426_1;
    integer i = -569;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3426_1;
    c_3426_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zzxxx1x10zz001xzzzxz10x11xxzxzxzzxzzxzzzxxzzxxxxxzxzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
