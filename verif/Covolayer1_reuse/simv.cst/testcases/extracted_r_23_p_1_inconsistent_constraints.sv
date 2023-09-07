class c_23_1;
    integer i = -21;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_23_1;
    c_23_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0xzx1z10xx1z1xxxx0x0xxxxx111xxxxzxxzzzxzxxzxxzzzzzxxzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
