class c_2461_1;
    integer i = -409;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2461_1;
    c_2461_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx11zz110z1x10x110x1x00xzx0xx10xzzzxxzxxzxxzxzzzxxzzzzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
