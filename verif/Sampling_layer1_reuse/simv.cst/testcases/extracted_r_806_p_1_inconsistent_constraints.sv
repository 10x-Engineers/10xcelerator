class c_806_1;
    integer i = -133;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_806_1;
    c_806_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz0z11zz101xxx1z111zzz1x1zzx10xxxxzxxzxxzxxzzzzxxzzxxzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
