class c_910_1;
    integer i = -150;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_910_1;
    c_910_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001x0010x1z1x1100011001x1x10x1xzxzxxxxxxzxzxxzxxzxzxxzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
