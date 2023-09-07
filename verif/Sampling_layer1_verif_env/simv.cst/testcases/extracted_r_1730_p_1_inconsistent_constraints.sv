class c_1730_1;
    integer i = -287;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1730_1;
    c_1730_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x11010zxx1z0z0000110zx011xx0zzzzzxzzzxzxxzzzzzzzxzxzzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
