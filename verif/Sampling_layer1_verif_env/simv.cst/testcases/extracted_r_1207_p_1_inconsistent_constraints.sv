class c_1207_1;
    integer i = -200;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1207_1;
    c_1207_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x01z001zzxxxz1z11x1x1z101x010zxxxxzxzxxxzxxzzxzxzxxzxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
