class c_1471_1;
    integer i = -244;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1471_1;
    c_1471_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000111xzx0xx0xxxx0zxz10zxz110111zxxxzzzxxxxzxxzxxzxzxxzxxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
