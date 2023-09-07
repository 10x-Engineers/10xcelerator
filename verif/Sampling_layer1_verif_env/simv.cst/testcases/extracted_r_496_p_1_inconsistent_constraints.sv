class c_496_1;
    integer i = -81;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_496_1;
    c_496_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z100xzx011xz11xzzz1z1000011z10xxxxxzxxzzxxzxxzzzxzxzxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
