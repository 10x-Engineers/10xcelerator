class c_2943_1;
    integer i = -489;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2943_1;
    c_2943_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z0z0z0x111z0zxzx10xzzz1xzz110xxxxzxxxzxzzzzzzxzxzxzxxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
