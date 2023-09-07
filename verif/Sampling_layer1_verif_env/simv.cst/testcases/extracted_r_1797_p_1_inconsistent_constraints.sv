class c_1797_1;
    integer i = -298;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1797_1;
    c_1797_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxx100z0zx1x0x111xzx01z0xzx0xzxzzzxxzxxxxzzxzxzxxzzzzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
