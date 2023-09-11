class c_2254_1;
    integer i = -374;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2254_1;
    c_2254_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx0zzx1zxx0x11xxzx1zzx01100xxxxxzxzxxxxxxzxxxzzxzxzxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
