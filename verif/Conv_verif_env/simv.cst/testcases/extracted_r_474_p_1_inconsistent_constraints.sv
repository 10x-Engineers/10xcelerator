class c_474_1;
    integer i = 474;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_474_1;
    c_474_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx1z110x01xzx0z0010x1z010x110zxzzzzxxxzzxxxzzzzxzxzxxzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
