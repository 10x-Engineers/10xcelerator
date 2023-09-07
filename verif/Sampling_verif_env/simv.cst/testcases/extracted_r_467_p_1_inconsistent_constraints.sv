class c_467_1;
    integer i = 467;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_467_1;
    c_467_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzzz1x01z1zz0zx1z1z10zxz0000xzxxxxxzzxxzzzzxzzzxzxxzzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
