class c_549_1;
    integer i = -90;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_549_1;
    c_549_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz01z0zx0x01xz01x100x0zzxx0z10xxxzzzxxzxxxxxzzxzxxzzxzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
