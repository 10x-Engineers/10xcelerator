class c_274_1;
    integer i = -44;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_274_1;
    c_274_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z110xzzz01xzx001x0xx00zx11zxxzxxxxzxxzzxzxxzzzxzzzxzxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
