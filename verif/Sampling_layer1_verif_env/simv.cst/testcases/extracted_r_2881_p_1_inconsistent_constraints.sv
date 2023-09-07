class c_2881_1;
    integer i = -479;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2881_1;
    c_2881_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1110xz10zxx1xxx0x11zx0x01z00x1zzxxxxxzzzzxzxxxxzxzzxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
