class c_3009_1;
    integer i = -500;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3009_1;
    c_3009_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz01x1z001x1zxz0xxz01z1zxx1zx1xxzzxxzzzxxzzxzzzzzxxxzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
