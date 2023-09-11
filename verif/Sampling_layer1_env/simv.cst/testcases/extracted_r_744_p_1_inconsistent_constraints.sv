class c_744_1;
    integer i = -122;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_744_1;
    c_744_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0zxx1x1z11z01100z1zx10x0111xxzxxzzxzzxzxxzxzzxxzxxxxzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
