class c_1927_1;
    integer i = -320;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1927_1;
    c_1927_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xx0xz1z0011zxx1x11z1x1zzxx110zzxzzxzxxxxxzxzxxxzzzxxzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
