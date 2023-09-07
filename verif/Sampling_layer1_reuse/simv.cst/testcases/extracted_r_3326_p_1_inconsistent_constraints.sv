class c_3326_1;
    integer i = -553;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3326_1;
    c_3326_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1z11011111z10x0x0011z01xz110zzzxxzzxxzxzxzzxzzzxxzxzxzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
