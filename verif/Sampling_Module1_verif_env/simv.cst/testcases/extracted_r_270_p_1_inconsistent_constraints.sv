class c_270_1;
    integer i = 270;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_270_1;
    c_270_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx0zxx010x0x1z1xxz11x0x0x0xzx0xxxxxxxzzzxzzzzxzzzzxxxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
