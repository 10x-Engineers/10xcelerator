class c_2466_1;
    integer i = -409;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2466_1;
    c_2466_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zx01z11x0x10z00x01xz1xz01z010zzxxxxzxzzxxzxzxzxzzxxxxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
