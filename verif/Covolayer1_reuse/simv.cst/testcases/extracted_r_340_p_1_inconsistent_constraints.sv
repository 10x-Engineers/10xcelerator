class c_340_1;
    integer i = -338;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_340_1;
    c_340_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxz11xxz1z0xzxxz0x0xzx1x01xzx0zxxxzxzzxzzxzzxxxxzxxzxzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
