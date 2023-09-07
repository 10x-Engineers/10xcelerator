class c_267_1;
    integer i = -265;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_267_1;
    c_267_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1zzxz0z0z01z1x111zzzx0x010xzxxzxxzzzxzxzzxzxxxxxxzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
