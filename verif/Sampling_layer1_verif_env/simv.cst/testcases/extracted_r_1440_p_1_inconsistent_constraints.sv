class c_1440_1;
    integer i = -238;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1440_1;
    c_1440_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011z001z1xzz0100z00xx01x01z111xzxxzzzzxxxxzxxzzzxzzxxxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
