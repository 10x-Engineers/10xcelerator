class c_2955_1;
    integer i = -491;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2955_1;
    c_2955_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxzx1zx0x00z11xxzxx11xx0z11z00zxzzxzzxxxzzxxxxxzxxxzzzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
