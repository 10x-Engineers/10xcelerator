class c_1200_1;
    integer i = -198;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1200_1;
    c_1200_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zzz1x01z01xzz00x11xxzx11zxxxxzxxzxzzxxzzxxzzzzxzzzzzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
