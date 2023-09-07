class c_1064_1;
    integer i = -176;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1064_1;
    c_1064_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z0zxz1zx001x1110zz0z1x1000110zxzzxzzxxxxxxzxzxzxxzxzzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
