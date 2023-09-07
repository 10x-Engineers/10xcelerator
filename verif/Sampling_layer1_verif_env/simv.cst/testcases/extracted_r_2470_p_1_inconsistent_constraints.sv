class c_2470_1;
    integer i = -410;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2470_1;
    c_2470_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzxxxx01z0xzx01x10xx01z11zz01zxzzxxxzzxzzxzxxxzxxxxxxxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
