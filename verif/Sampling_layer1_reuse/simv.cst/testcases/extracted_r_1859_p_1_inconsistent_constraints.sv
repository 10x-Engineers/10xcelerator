class c_1859_1;
    integer i = -308;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1859_1;
    c_1859_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz101xx0zz0z0x01z0z00x1z0x010zxzxxzxxzxxzxzzxxxzxxxxzzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
