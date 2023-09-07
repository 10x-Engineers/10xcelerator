class c_243_1;
    integer i = 243;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_243_1;
    c_243_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0x0100x10x0xxz000xx0xz0x11x01zxxzzzzxxxzxzzxxzzxzxzzzxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
