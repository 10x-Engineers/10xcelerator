class c_2651_1;
    integer i = -440;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2651_1;
    c_2651_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11x11011x1001xzxx01z01zz1z0xxxzxxzzzxxxxzxzxzzxxzzzzzzxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
