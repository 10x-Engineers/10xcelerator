class c_303_1;
    integer i = -49;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_303_1;
    c_303_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0zxx101000zx101zzx0x01z11xxz1zxzzxxzxxzzzxzzxxzxxzxxzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
