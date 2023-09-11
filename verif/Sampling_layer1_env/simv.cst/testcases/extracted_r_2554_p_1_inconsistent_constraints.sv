class c_2554_1;
    integer i = -424;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2554_1;
    c_2554_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx110z00z1xxxz0x00zxx010z0zz11x0xxxzzzzzxzxzxxxzxzzxzxxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
