class c_2988_1;
    integer i = -496;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2988_1;
    c_2988_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx0z011z1z101xz11x100x0x0z100zxzzxzzxxxxxzxxzxxzxxzzzxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
