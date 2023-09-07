class c_319_1;
    integer i = -52;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_319_1;
    c_319_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxxx1xzxz0xx00xzz0xx1x0x1100zxxzxxxxxxzzzzzzzxxzxxxxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
