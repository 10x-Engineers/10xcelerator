class c_657_1;
    integer i = -108;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_657_1;
    c_657_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x0111zz011x0z00zx100x0010xxxzzzxzxxzzxzzxzzxxzzzxzzzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
