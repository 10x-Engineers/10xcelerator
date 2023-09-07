class c_1101_1;
    integer i = -182;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1101_1;
    c_1101_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z00x11010111xxx01xxx0zz010z1zzzxxxzzxxxzzzxxxxxzxxzzzzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
