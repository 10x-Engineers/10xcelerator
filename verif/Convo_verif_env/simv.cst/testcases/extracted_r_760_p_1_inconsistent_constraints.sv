class c_760_1;
    integer i = 760;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_760_1;
    c_760_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z110zxx11x1z01z1x11z00zz0zz1zzxxxzxzzzxxxzzxxzxxxxxzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
