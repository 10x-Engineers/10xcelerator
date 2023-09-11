class c_3448_1;
    integer i = -573;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3448_1;
    c_3448_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001z1xzx1z11zz00100xxx01z000001xxxxxxxzxzzzzxxxzxxzxxxxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
