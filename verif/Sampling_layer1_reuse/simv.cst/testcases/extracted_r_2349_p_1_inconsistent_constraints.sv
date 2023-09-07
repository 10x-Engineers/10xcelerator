class c_2349_1;
    integer i = -390;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2349_1;
    c_2349_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z111zx0xx1x0xxzz0x01xxx111011xzzzxzxxzxzxxxxxzxxxxxxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
