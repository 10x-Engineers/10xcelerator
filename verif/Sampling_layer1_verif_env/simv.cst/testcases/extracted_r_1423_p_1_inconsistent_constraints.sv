class c_1423_1;
    integer i = -236;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1423_1;
    c_1423_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x1x1zxzx11x11z110x1x11z1z0001xzxzxxzzxzxzxzxzzzxzzxxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
