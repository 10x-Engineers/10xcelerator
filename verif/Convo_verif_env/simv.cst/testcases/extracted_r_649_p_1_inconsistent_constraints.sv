class c_649_1;
    integer i = 649;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_649_1;
    c_649_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z0zxx01x1010011zxz0xz000z1xzxxzxxxzxxzzxzzxxxzzzxxxzzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
