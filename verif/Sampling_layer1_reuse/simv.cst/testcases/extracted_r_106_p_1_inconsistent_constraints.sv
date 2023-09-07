class c_106_1;
    integer i = -16;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_106_1;
    c_106_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11zx1zz1100x00xz00xzx11001xz0zxxzzxzxxxzzzxzxxzxxxxzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
