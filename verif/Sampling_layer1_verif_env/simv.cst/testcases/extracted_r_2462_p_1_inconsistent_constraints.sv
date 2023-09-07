class c_2462_1;
    integer i = -409;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2462_1;
    c_2462_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx00110x000x1xxzxz010x1z1zz0xxxzxzxzzxxxzxxzzxzxzzzzxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
