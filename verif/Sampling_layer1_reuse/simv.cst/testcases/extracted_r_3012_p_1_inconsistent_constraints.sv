class c_3012_1;
    integer i = -500;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3012_1;
    c_3012_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x01x000xzxz01zxzx0zx111zz01z11xxzzxxzzxxxzzxxxxxzxxxzxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
