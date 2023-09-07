class c_1992_1;
    integer i = -330;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1992_1;
    c_1992_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z10011zxzxxxx0z1zx01x1zz00xxz0zzzxxzzzxxxzxzzzxzzxzxzzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
