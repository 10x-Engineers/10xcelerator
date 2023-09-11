class c_1600_1;
    integer i = -265;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1600_1;
    c_1600_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx0x100z1z000z0xzzx10x000x11xzxxxxzxzxzxxxxzxzzxzzzzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
