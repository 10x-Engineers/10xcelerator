class c_457_1;
    integer i = 457;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_457_1;
    c_457_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100011zxx1z0x1zx0zz01xz0100x1z1xzzzxzzxxxxxxxzzzzxzxxzxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
