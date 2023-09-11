class c_142_1;
    integer i = -22;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_142_1;
    c_142_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zz110xz1xxxxxx100x011x01x11x11zxzxzzxxzzzxxxzxzxxxzxzxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
