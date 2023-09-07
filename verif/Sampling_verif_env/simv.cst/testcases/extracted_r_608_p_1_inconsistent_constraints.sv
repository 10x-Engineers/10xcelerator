class c_608_1;
    integer i = 608;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_608_1;
    c_608_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz1x11xz0zxz1zxxz011z1zz1z111xxzxxxzxxzxxxxxzxzzzzzxxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
