class c_2468_1;
    integer i = -410;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2468_1;
    c_2468_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11z00x111xzxx0xz0z0110zxx10xzxzxzzzzzxxzzxzxxxzxzzxxxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
