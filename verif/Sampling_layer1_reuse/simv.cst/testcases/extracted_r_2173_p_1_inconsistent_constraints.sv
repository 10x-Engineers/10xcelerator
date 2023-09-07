class c_2173_1;
    integer i = -361;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2173_1;
    c_2173_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x00xxx11xz0zzzz0x001z11x01z0zxzzzxzzxxzxxxzxxxzxzzxzzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
