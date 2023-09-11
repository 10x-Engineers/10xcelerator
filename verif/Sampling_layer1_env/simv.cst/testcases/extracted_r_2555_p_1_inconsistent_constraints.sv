class c_2555_1;
    integer i = -424;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2555_1;
    c_2555_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101111x000zz00z00z10xzzz0xxzzxxxxxzzzzxxxxzxxzzzxzzxxzzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
