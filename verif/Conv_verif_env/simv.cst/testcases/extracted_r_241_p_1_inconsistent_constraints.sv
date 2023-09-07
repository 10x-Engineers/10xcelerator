class c_241_1;
    integer i = 241;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_241_1;
    c_241_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx10000x010z010xx0xzx00xx10xx1xxzzzxzzxxxzzxxzzzxxzzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
