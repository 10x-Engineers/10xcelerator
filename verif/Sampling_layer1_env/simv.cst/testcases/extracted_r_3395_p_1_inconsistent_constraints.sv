class c_3395_1;
    integer i = -564;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3395_1;
    c_3395_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x11x000011z0xz111x1001100z011xxxzzxxzxxzzxzzxzzzxzxxxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
