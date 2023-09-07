class c_531_1;
    integer i = -87;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_531_1;
    c_531_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz00x0000zzzxx1x000z00111zz1zz1xzxzzxxxxzxzzxxzxzzzzzxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
