class c_411_1;
    integer i = 411;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_411_1;
    c_411_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1z1zxzz01z1zzzzxz0z1z0x0xx11zzxzzzxzxxxzzxxzzxxxzxzzxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
