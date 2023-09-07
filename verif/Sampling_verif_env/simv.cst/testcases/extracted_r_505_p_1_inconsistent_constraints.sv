class c_505_1;
    integer i = 505;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_505_1;
    c_505_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zxx0x1zxz0zxzxx1x1x0xx01zxx1xxzxzxxzzzzzxzzxzzzzxzxzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
