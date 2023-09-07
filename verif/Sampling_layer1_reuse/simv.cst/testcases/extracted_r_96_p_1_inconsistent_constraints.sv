class c_96_1;
    integer i = -14;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_96_1;
    c_96_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10001z1xz101110xxzx100z1x10zzzzxzzzzxzxzzxxzzxzxzxxzxxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
