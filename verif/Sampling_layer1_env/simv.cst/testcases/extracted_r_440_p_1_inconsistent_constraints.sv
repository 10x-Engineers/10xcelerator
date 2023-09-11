class c_440_1;
    integer i = -72;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_440_1;
    c_440_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1z1x1x1z1zx10x0z0z00x0zx0xxxzzzxzxzzzxxzxxzxxxzzzxzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
