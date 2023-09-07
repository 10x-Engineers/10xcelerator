class c_469_1;
    integer i = 469;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_469_1;
    c_469_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11101zzx0x0xzzzzxzz01z0zx1z101xxxzxzxzzzxzzxzxzzxxxzxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
