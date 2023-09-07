class c_260_1;
    integer i = 260;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_260_1;
    c_260_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz11xz0x1z0zxz01x1xzx1xx111zx1xzxzzzzxxxxzzzxzxxzxxzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
