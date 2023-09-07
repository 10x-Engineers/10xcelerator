class c_467_1;
    integer i = -76;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_467_1;
    c_467_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0zzz101x00x1xx01z00x1xxz0zzx0zzzxzxxxxxzzxxzxxzzxzzxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
