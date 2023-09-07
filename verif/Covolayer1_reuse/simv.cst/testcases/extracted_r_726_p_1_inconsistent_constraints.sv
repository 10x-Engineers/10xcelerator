class c_726_1;
    integer i = -724;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_726_1;
    c_726_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxxzzx1xxxxz0z0xzx0x1zxxxx111zxzzxzxxxzzzzxzxxxxzzzzzzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
