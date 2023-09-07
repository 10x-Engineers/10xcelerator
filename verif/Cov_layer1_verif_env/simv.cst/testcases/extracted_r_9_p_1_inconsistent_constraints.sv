class c_9_1;
    integer i = -7;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_9_1;
    c_9_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10zzx10x01zx0xxzzz0z0x1x0010x1xzzzxzzxzzzzxzxxzzzxxxzzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
