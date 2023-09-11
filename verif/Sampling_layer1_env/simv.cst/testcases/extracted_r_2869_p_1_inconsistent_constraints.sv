class c_2869_1;
    integer i = -477;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2869_1;
    c_2869_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz000zxxz0z0x000x01z10zxxxxz11zzzxxzxzxzzzzxzzzzzxzxzzzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
