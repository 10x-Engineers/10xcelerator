class c_283_1;
    integer i = -281;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_283_1;
    c_283_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z1xxz1x0xxz1z1x1x01z0x1z1xzzxzxxzxxxzxxzxzzxxxxxzxzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
