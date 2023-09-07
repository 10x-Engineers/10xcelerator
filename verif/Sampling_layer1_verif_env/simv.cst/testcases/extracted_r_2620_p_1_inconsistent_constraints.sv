class c_2620_1;
    integer i = -435;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2620_1;
    c_2620_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x01zzx110x0x101x01z1110zxz001zzxxxzzxzxzxzxxzzxxzxzxxxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
