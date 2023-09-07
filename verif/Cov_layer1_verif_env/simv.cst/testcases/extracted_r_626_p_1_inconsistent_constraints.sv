class c_626_1;
    integer i = -624;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_626_1;
    c_626_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00z0z1zx1100z01z0xzzxx1z0x11x1zxxzxxzxxzxxxzxzxzzzxzxzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
