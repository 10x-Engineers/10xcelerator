class c_485_1;
    integer i = -483;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_485_1;
    c_485_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10xxxx1zxxz01x0z0xx111xxxz10xxxxzxxzxzxzzzzxzzxzxxxxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
