class c_1068_1;
    integer i = -176;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1068_1;
    c_1068_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxzx10x1101zx1zx1x10x001xx01xxzzxxxxxzzzxzzzxxzzxzxxzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
