class c_1954_1;
    integer i = -324;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1954_1;
    c_1954_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0zz0zxzz0zx01z0z1zxzzxzxz11zxzxxzzzzzzzxxzzxzzxzzzxzxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
