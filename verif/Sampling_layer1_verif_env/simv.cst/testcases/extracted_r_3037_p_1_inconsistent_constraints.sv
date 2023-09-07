class c_3037_1;
    integer i = -505;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3037_1;
    c_3037_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11101x1xz0zz1xzxzx0z0z010x11z0z0zzzxxzzzzxxzxxxzxxzxzxxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
