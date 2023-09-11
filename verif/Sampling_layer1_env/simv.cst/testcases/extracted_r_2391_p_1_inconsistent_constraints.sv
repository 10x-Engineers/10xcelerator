class c_2391_1;
    integer i = -397;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2391_1;
    c_2391_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100zz11z00zxxxz0xx100z11x100z0zxxxxxzzxzzxzzzzzxxxzzzzzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
