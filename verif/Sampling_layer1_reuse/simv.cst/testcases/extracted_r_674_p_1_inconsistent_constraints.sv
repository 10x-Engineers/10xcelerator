class c_674_1;
    integer i = -111;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_674_1;
    c_674_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx1100x1x01z00110x1x01x1z10z11xzxxzzzxzxzzxzzzzxxxxxxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
