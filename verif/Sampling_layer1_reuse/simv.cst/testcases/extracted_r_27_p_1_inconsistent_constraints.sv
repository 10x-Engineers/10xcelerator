class c_27_1;
    integer i = -3;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_27_1;
    c_27_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xz11z0x10x1x11x00zzzxzz1x0x1xxxzzxxxzxxzzzxxzxzxxzzxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
