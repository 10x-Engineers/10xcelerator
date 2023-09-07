class c_798_1;
    integer i = -131;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_798_1;
    c_798_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00zxzz1z1x1x10xzx10zxxzzxzz000zxzxxxxzxzxxxzxzxzzzxxxzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
