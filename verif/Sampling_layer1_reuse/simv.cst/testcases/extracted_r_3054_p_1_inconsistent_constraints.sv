class c_3054_1;
    integer i = -507;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3054_1;
    c_3054_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz11x00000x10x0x0zz110101110xxxxzxxxxzxxzzzzxxzzxxxxzzxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
