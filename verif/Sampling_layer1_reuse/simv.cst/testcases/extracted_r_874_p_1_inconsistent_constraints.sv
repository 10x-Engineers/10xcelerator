class c_874_1;
    integer i = -144;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_874_1;
    c_874_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zz1zx11xx0z00zz0x0z1100z01xxxzxxxzxxzzzxxzxzzxxzxxxxzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
