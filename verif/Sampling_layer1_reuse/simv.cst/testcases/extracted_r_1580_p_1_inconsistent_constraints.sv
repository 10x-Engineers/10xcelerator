class c_1580_1;
    integer i = -262;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1580_1;
    c_1580_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z0zzzxxzzz0z01z1xzxx10zx1xxxxzzxxzzzxzxxxxzxxzzzxzzzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
