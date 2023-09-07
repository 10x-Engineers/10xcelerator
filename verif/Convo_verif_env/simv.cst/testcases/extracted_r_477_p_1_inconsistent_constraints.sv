class c_477_1;
    integer i = 477;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_477_1;
    c_477_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z1xx1zzx1z01z0x00001x11zz1xxxzzzxxzxxzxzxxzzzzzxzzzzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
