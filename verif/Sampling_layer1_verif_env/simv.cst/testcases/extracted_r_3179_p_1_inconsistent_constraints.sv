class c_3179_1;
    integer i = -528;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3179_1;
    c_3179_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01xx010z1x10x101x000x1z1z0x100xzxxzzzzxzxzxzzxxxxxxzxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
