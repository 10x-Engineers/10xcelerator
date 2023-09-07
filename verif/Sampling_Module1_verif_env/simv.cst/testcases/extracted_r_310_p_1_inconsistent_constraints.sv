class c_310_1;
    integer i = 310;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_310_1;
    c_310_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0010z01z0xxx0z0x0x0x1z0x0z11z1zxzzxxzzxzzxzxxzxzzxzzxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
