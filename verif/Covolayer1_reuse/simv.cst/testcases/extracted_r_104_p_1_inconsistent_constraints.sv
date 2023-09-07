class c_104_1;
    integer i = -102;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_104_1;
    c_104_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xxzx10zx00xzxxz0xxxx00xzz00xxxxxzxxzzzxxxzzzxzzzzzzxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
