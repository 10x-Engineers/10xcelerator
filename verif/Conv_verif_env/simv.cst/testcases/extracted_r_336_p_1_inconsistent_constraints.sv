class c_336_1;
    integer i = 336;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_336_1;
    c_336_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x1x0x0zz00zxxzz0000xzx11zx010zxxxxxxzxxzxxxzxzxzxxxzzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
