class c_830_1;
    integer i = -137;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_830_1;
    c_830_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z11zz1xx0x01zz1z1010zzzzz1x0xxzxzzxzzxzxxzxxzxxzzzxxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
