class c_2026_1;
    integer i = -336;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2026_1;
    c_2026_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z00110x0z10z11x1xx10x0xzz01z01xxzzxxxxxxzxzxzzzxxzxxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
