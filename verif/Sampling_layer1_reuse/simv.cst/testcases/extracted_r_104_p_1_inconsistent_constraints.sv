class c_104_1;
    integer i = -16;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_104_1;
    c_104_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zx01001xzzxz0z1z01z101xz01z0xzxxzxzxzxxzxxzxzzxzxxzxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
