class c_2697_1;
    integer i = -448;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2697_1;
    c_2697_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110111z00xzz01xzxz0000z0100xxxxzxzzzxzzzzzzxzzzzzzzzzzxxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
