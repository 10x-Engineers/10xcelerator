class c_369_1;
    integer i = -367;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_369_1;
    c_369_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zx1z1xx0110x01z1xzzz01x0xxz1xzzxzzzxzxxzxxxzxzxxxxzzxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
