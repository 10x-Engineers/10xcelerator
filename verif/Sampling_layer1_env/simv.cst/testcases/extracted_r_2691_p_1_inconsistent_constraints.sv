class c_2691_1;
    integer i = -447;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2691_1;
    c_2691_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00z0xz1xzzz100x01xxx0111000xzzxxzxxxxzxxxxxxxzzzxzxxxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
