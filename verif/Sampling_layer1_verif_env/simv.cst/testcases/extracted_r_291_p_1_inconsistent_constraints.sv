class c_291_1;
    integer i = -47;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_291_1;
    c_291_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z101xxz1x1x10x00zx10zxzx1zz0zzzzzxzxxxxzxxxzxzxxxxzzxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
