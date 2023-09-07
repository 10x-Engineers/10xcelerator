class c_2968_1;
    integer i = -493;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2968_1;
    c_2968_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z011z0z0zzx11x1x01zxx0000z0x000xzxzxxxzzxzzzxxxzxxxzzxxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
