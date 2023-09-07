class c_231_1;
    integer i = -229;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_231_1;
    c_231_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010x110z11xzx0x010x00z1100xxzzxzxxzxzxxzxzzxzxzzxzzzzzxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
