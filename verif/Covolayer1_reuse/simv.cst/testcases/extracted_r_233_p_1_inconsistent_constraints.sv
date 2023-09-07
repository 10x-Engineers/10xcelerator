class c_233_1;
    integer i = -231;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_233_1;
    c_233_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x01zzzx10zxzz111xz01z0z001zzzzxzxxzzzxxzzxzzzxxxzxxxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
