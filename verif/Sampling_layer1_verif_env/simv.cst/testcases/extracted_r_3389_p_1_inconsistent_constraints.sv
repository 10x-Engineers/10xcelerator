class c_3389_1;
    integer i = -563;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3389_1;
    c_3389_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000zx10zx1z01z0xzx00z0z0001001xzxzzxxzzzzxzzxxzzxzzxxzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
