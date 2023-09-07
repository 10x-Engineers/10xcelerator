class c_1031_1;
    integer i = -170;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1031_1;
    c_1031_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x01z10zx0x01x1zxxx01z0x1xxx0zzxxzzzzzxxzzxzzxxxxzzzzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
