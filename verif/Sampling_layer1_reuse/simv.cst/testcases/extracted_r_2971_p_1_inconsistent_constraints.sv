class c_2971_1;
    integer i = -494;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2971_1;
    c_2971_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001x1x0x011zz001x0zx1z1z1z1zzxxzzxxxxxzxxzxzzxzxxxzxxxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
