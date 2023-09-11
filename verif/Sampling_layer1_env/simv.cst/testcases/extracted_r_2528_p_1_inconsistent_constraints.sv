class c_2528_1;
    integer i = -420;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2528_1;
    c_2528_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x01xz1x101z000z00zzzz0zxx0x1xxxzxzxxzzxzzzxxzxxxzzxzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
