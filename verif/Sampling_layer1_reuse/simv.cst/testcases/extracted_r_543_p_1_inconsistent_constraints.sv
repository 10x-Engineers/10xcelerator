class c_543_1;
    integer i = -89;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_543_1;
    c_543_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz10x01z1zxx0zz0z0x010100x0xx0zzxzxzzxxzxxxzzzzzzzxxxxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
