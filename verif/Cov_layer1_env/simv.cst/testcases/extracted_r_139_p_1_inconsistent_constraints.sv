class c_139_1;
    integer i = -137;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_139_1;
    c_139_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x000000zzz1110z1zxz11xx101110x1xzzxxxxzxxzzzzzzzxzzxxzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
