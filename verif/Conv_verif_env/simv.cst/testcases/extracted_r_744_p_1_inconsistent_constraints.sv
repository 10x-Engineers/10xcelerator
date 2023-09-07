class c_744_1;
    integer i = 744;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_744_1;
    c_744_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xzzz11xx1x1xzz1x01z11x11010x0zxxzzxxxzxzxzzxxxzzxxxxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
