class c_1117_1;
    integer i = -185;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1117_1;
    c_1117_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzz10z1x1z111z0x11x00x1110z10zxxxzzxzxxzzxzxxxxxzxxxxxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
