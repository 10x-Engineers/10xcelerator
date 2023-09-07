class c_2525_1;
    integer i = -419;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2525_1;
    c_2525_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x01z00z1xx0111010zz1111001x0zxzzxzxzxxzxxzzxxxxzzxxxzxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
