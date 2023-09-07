class c_3175_1;
    integer i = -528;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3175_1;
    c_3175_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zx1x10010xzz1xz1zxz1x11zx10x1xxzxxzzzzzzxzxxxxxzzzzzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
