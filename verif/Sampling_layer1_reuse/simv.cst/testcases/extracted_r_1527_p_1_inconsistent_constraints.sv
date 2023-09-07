class c_1527_1;
    integer i = -253;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1527_1;
    c_1527_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111x0001x0xx0z00xzzxz0xx0x0xzxzzzzxxzzxxzxxzxxxxxzxzxzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
