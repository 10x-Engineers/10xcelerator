class c_2170_1;
    integer i = -360;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2170_1;
    c_2170_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzxx1x1zzxz1z01x01110x11zz001zzxxzzxzzxzxzxzxzxzxxzxxxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
