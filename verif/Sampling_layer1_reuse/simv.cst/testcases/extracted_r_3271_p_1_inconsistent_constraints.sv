class c_3271_1;
    integer i = -544;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3271_1;
    c_3271_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1x00000zzzzx10x0xxzxz11zxzx11zzxzzzxzzxzxzzxxzxxxxzxxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
