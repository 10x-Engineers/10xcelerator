class c_748_1;
    integer i = -746;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_748_1;
    c_748_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x1111zxx1111x10zzzzzx1z0xz111xzxzxzxxzxzxzxzxxzzxzxxxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
