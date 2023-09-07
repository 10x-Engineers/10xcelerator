class c_37_1;
    integer i = -35;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_37_1;
    c_37_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000zxxz1111xxxx1x000xz0z0zzx0z1xxzxxzxzzxzzxxxzxxxzxxzzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
