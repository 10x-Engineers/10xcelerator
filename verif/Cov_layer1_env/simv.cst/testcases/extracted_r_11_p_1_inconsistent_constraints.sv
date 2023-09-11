class c_11_1;
    integer i = -9;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_11_1;
    c_11_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx00zx10z11z10xx0x10x00z00000xzzzxxxzzxzxzxxzxxzxxxzzxzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
