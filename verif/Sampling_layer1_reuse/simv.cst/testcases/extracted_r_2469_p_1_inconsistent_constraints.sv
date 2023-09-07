class c_2469_1;
    integer i = -410;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2469_1;
    c_2469_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01z100zxxxzz0111xxz0110z1z0xzxzxzxxzzxzzzxxxxzzxzzxzxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
