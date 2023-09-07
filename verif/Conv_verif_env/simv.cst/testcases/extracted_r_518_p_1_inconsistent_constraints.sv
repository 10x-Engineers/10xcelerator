class c_518_1;
    integer i = 518;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_518_1;
    c_518_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x00xxz0xz1z01z0xz0z01z111xzxz0xxxxzxxzxxxxxzxzzzzxxzxxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
