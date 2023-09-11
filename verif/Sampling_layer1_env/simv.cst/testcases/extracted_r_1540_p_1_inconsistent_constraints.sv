class c_1540_1;
    integer i = -255;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1540_1;
    c_1540_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001z0xx00xzx00001zz000xzz00xzzzzzxxxzxzxxzzzzxxxzzxxxxxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
