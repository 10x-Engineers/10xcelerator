class c_1875_1;
    integer i = -311;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1875_1;
    c_1875_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z0zz0zzz010x011111110x1xx0100zzzxzxxzzxzxzzzxxzzzxzxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
