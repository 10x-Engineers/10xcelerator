class c_150_1;
    integer i = -148;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_150_1;
    c_150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz101100z0xzxx1xzzzxxzzxxxz01zxzxxxxxzxxzxxxzxxxxxxxxxxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
