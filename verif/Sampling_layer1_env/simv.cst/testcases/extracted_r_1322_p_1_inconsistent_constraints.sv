class c_1322_1;
    integer i = -219;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1322_1;
    c_1322_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0zx00zxz110z01z1010zxxx1x0x10xxxzzzxzzxzzzxzzxzxxxxzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
