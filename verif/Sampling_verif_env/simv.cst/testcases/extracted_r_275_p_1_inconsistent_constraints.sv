class c_275_1;
    integer i = 275;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_275_1;
    c_275_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z111z1zx0xxz0x1zzx10x01zz1011xxzxxxxxxxzzzxxzxxzxzzxzzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
