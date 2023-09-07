class c_1059_1;
    integer i = -175;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1059_1;
    c_1059_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx10zx1zz01xz0z11z01z0zx01xz10xzxxzzzzzzxxzxzxxzzxzzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
