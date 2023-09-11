class c_1288_1;
    integer i = -213;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1288_1;
    c_1288_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz00z100x10xzz11x000zz101x10zxxzzxzzzzxxxxzxxxzxzzzzzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
