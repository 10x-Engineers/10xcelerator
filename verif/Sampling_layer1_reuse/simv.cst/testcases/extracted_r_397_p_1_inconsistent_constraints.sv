class c_397_1;
    integer i = -65;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_397_1;
    c_397_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zx11z1zzx1z00zxx1101x11zz1x1xxxzzzzxzxxxzxzzxzxxxxxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
