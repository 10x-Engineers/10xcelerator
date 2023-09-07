class c_3098_1;
    integer i = -515;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3098_1;
    c_3098_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxx1zz1z1x1z0xzz0zzx011zz11zx0xxzzzxzxzzxzzxzzzxzzxzxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
