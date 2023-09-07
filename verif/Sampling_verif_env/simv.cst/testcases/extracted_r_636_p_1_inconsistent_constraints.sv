class c_636_1;
    integer i = 636;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_636_1;
    c_636_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z11x01xx0x1z0x0x000zzxz0zz0x01xxxzzxzxzxzxxxzxxzxxxxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
