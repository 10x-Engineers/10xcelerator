class c_1557_1;
    integer i = -258;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1557_1;
    c_1557_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z001z0zzzz0z1z000xxzz01z101x0zzxxzzzxzzxzzzxxzxxxzxxzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
