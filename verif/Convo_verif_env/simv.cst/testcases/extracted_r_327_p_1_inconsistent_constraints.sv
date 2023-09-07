class c_327_1;
    integer i = 327;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_327_1;
    c_327_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz01xz1xxxxx0x11zxxxx00z1xzx00zxzzzxzxxzxzxxzzzxzxxxxzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
