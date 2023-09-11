class c_220_1;
    integer i = -218;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_220_1;
    c_220_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001x1z11zxzxx010xx100zxxzxx0x1xxxxzxxxzzzzxzxzxzzxzxzxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
