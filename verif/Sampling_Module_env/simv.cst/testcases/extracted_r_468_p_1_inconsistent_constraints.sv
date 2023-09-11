class c_468_1;
    integer i = 468;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_468_1;
    c_468_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01zx0z10zxzx0x10010x11z110x000xzzzzxzzxzzzxzzzxxzxzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
