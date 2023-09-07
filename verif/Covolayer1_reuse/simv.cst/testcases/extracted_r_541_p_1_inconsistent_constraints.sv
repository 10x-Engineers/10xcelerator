class c_541_1;
    integer i = -539;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_541_1;
    c_541_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzxz1xx1zz1010xzz100x11101010zzxxxzzxzxzzxzzzzxxxxxzzzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
