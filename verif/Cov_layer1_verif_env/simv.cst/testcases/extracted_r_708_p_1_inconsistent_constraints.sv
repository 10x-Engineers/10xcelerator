class c_708_1;
    integer i = -706;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_708_1;
    c_708_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0zzzxzxx10000xxx1z100x0x1000zxzzxxxxxxzxzzzxxxzzzzxxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
