class c_2617_1;
    integer i = -435;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2617_1;
    c_2617_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xx0zz1zx1xz11zxx1110xx0xz01z1xzzxxxxxxzxxxzxzzzxzxzzxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
