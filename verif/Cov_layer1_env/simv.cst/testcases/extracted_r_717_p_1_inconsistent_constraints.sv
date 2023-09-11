class c_717_1;
    integer i = -715;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_717_1;
    c_717_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x01x01x1111zxx10zx0zx1zx1x010zzzzxzzxzzxxxzxzzzxzzzxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
