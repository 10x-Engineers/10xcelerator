class c_290_1;
    integer i = -47;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_290_1;
    c_290_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzzxxz01011zx01x0zxzxx0xx10zx0xxxxxzxxxzxxxxxxzzxzxzxzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
