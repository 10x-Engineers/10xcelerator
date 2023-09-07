class c_144_1;
    integer i = -142;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_144_1;
    c_144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z1000zz0000000xz01xzx01z0xz0xxxxzzzxxxxzzxzxzxxzzxzxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
