class c_615_1;
    integer i = 615;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_615_1;
    c_615_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz000xxx000xz0xz100x01x1xzxz01zxzxzxxzzxzzzxxzxzxzxxxzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
