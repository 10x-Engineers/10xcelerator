class c_827_1;
    integer i = -136;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_827_1;
    c_827_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z0xx1z0x01z0xz01x0111x10xx101zzxzxzzzxxxxzzxxzzxxxxzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
