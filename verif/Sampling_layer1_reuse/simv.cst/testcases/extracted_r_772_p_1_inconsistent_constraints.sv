class c_772_1;
    integer i = -127;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_772_1;
    c_772_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx101zx0zz010x1zx1110x10x1zxx1xxzxxzzxxxzxxzzxzzzxxxzxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
