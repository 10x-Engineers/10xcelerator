class c_3162_1;
    integer i = -525;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3162_1;
    c_3162_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x0xx010z011110x10x00z0x1z1000xxzxzzzzxzzxxxxxxxxzzzzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
