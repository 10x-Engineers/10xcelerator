class c_2631_1;
    integer i = -437;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2631_1;
    c_2631_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xx01z000zxzzz11z011xxzz0xx110xzxzzxzzzxzxzxzxxxxzxzxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
