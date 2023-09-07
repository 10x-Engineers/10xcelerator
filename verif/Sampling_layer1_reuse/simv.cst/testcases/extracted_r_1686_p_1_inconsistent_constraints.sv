class c_1686_1;
    integer i = -279;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1686_1;
    c_1686_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1z1011zz0xx1010x000zz0z11z01xxxzzxxxxzxxzzzzxzxzxzzzzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
