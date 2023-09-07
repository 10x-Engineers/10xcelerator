class c_1038_1;
    integer i = -171;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1038_1;
    c_1038_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z1110zz0zxx0z10xzxzz00z01z1z0zzzzzxzxxzxxzxzxxzzzxzxzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
