class c_3187_1;
    integer i = -530;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3187_1;
    c_3187_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xxz1zzxx0x0zz0z0zzx01z101x0x0xxxzzxzxzzxzzxxzxxxxxxxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
