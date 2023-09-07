class c_2821_1;
    integer i = -469;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2821_1;
    c_2821_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzxz01z01x10zz0z1z0x0x0x10010zzxxxxxxzzxzxzxxxzzxxzxzzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
