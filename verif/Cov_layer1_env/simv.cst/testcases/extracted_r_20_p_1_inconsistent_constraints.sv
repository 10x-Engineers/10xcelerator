class c_20_1;
    integer i = -18;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_20_1;
    c_20_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xzxx10010zx1x0x1z11x110x0zx0xxxzxxxxxzxxzzxzxzxzxxzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
