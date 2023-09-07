class c_503_1;
    integer i = 503;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_503_1;
    c_503_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x11zx01x0x010xz0xxxx1x1zx10z0zxxxxzxzxzxxxzxxzzzzxxxzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
