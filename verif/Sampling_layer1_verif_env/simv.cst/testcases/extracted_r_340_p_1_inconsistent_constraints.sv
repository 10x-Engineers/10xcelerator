class c_340_1;
    integer i = -55;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_340_1;
    c_340_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zx10011xzz0xzx0x11zxzzxzzx1z1xxxzzzzxzzzxzzxxxzzxxxzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
