class c_1866_1;
    integer i = -309;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1866_1;
    c_1866_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1z110x0111z0z01z1x1zzxz11000xzzzxzzxzzxzzxxzzxxzzzxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
