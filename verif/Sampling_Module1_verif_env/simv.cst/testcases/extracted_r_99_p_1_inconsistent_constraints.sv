class c_99_1;
    integer i = 99;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_99_1;
    c_99_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxx0z01x0zz11z1xz00zxxx0x0xzz0zzzzzxzzxzxxzzzzxzxzxxzxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
