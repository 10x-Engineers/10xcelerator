class c_2040_1;
    integer i = -338;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2040_1;
    c_2040_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0xz100xz0z0x01xx1z0z01z0z1x11zzxxzzxzxzzzxzxzxzzxzxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
