class c_2504_1;
    integer i = -416;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2504_1;
    c_2504_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x010zzz0zz1000z00z000xxz110x000zxxxzzzzzxxzzzxxzxzxxzxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
