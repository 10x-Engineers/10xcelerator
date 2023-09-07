class c_1983_1;
    integer i = -329;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1983_1;
    c_1983_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzxx1zx00z0xxx0zxxz1x000xzzz10xzxxzzxxzxxzzxxzxxxzxzzxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
