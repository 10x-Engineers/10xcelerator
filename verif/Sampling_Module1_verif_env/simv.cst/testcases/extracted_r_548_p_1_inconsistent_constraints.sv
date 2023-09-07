class c_548_1;
    integer i = 548;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_548_1;
    c_548_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x1z01x000x1xz0xz100z1zxx010x0xzzzzzxxzzxxzxxxzzxzxzzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
