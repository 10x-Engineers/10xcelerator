class c_2507_1;
    integer i = -416;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2507_1;
    c_2507_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z10xx10zzzz0zz000z1z1x1xx0100zxxzxxzxxxxzzzxzxxxzxzzxxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
