class c_2823_1;
    integer i = -469;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2823_1;
    c_2823_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x01zxzx10x1xxx0zz0z111x00zxxx1xxzxxzzzzxzzzxzzzzzzzxxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
