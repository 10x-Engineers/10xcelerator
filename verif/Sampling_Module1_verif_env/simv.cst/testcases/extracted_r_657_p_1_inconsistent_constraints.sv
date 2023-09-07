class c_657_1;
    integer i = 657;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_657_1;
    c_657_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x01z1010x0xxx1x0x0xzzx1z011z0xzxxzxzxxxzxxzxxzzxzxzzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
