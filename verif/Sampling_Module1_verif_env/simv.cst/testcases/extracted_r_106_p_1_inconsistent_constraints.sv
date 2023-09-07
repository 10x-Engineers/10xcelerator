class c_106_1;
    integer i = 106;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_106_1;
    c_106_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z1zx1zz0z0x01z1xxx0xzx1xzxxzxzzzzzzxzxxzxzxzzxzzzxzxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
