class c_1448_1;
    integer i = -240;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1448_1;
    c_1448_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx01z000x10xz11zz01zzz1x010zzxxzxzzzxzxxzxzxzxxxxzxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
