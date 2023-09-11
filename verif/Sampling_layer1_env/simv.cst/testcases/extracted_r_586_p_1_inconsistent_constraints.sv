class c_586_1;
    integer i = -96;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_586_1;
    c_586_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0xzx110x0x1zz111zx01z1z0x000xzzxxzxzzxxzxxxxzxzxxxxxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
