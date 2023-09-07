class c_2578_1;
    integer i = -428;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2578_1;
    c_2578_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx11x1x1x00z1zxz0z0z0x111000zx1zxzxxxxzxxxxxxxzzzxxzzxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
