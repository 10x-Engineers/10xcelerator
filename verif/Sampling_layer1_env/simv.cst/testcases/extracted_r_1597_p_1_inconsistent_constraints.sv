class c_1597_1;
    integer i = -265;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1597_1;
    c_1597_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z01100xx00zxx1xzz0xx1010x1001zzzzxxxzxxxxzzzxzzzxxzzxxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
