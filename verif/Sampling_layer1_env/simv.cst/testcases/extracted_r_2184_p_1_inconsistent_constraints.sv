class c_2184_1;
    integer i = -362;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2184_1;
    c_2184_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xxz0xxx0z1x0xzzzzz0zxzz01z0x1zzxzzzxzxxxzzxzxzzxzzxzzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
