class c_471_1;
    integer i = 471;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_471_1;
    c_471_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z1x11xx0x100zzx1zxx1x0zz1zzzzxxzxxzzzzzzxzzxzzzxzxxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
