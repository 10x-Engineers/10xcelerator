class c_175_1;
    integer i = -173;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_175_1;
    c_175_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x1xx0xzz101z0xzx1z11xxx11x0z0xxxxxzxzzxzxzzzxxzzxxxzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
