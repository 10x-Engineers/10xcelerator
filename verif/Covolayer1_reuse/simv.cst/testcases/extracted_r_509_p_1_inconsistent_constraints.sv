class c_509_1;
    integer i = -507;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_509_1;
    c_509_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10xzx00z1xzzx0x00xxzx10x10z11xzxxzxxxzzzzxzxzzzxxzzzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
