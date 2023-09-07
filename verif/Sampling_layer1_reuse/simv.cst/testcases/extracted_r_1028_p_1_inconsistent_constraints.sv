class c_1028_1;
    integer i = -170;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1028_1;
    c_1028_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001001xz1xzx11x10zxz0zz00100x0x1zxzxzxxxzxxxzxzxxzzzzxzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
