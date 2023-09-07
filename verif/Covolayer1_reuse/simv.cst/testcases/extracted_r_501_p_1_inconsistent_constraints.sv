class c_501_1;
    integer i = -499;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_501_1;
    c_501_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx110z11101zx1xxzx01z01xxzxx10z0xxzxxzzxzzzzxzzzzxzxzzzzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
