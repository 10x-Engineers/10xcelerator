class c_3082_1;
    integer i = -512;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3082_1;
    c_3082_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0xxx111zx1z1zz01z0xx1zz00xxx1xzxzzzxzzzzxzzzxzzxzxxzxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
