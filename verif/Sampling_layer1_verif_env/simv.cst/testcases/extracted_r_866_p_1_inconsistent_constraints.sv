class c_866_1;
    integer i = -143;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_866_1;
    c_866_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0xx1z000000zx1z0x0001x0x0000zzzzxzxxzxzzzzxxxxzxxxzxxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
