class c_2808_1;
    integer i = -466;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2808_1;
    c_2808_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xxx1x0zz1x0xx10zzzxzz1xzz0x0xzxxzzxxzzxxzxxxxzzzxzxxxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram