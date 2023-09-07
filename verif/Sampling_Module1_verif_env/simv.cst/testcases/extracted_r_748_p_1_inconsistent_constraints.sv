class c_748_1;
    integer i = 748;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_748_1;
    c_748_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz0010z0100z1z000x0xz1xxzxzx00zxxxxzxxxzzxzzzzxzzxxzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
