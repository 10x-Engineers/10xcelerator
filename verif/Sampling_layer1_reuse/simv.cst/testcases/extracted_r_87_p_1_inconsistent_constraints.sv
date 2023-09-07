class c_87_1;
    integer i = -13;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_87_1;
    c_87_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z010x0xx00zz0zx0zxxz001x101z01xzxxxxxxxzzxzxxxzxzxxzzxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
