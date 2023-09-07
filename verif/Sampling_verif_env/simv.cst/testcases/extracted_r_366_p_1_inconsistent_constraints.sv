class c_366_1;
    integer i = 366;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_366_1;
    c_366_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01z1x01xz0zxzz0xz1011x0x00z101zzzzxzxxzxzzzzzxzxzxxzzxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
