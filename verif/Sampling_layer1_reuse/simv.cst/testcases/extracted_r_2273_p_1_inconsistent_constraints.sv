class c_2273_1;
    integer i = -377;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2273_1;
    c_2273_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1100x1xxz01zzzzx01xz0xzz01z0010xzxzzxxxzxzxxzzzzzxxzzzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
