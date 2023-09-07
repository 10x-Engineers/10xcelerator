class c_1715_1;
    integer i = -284;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1715_1;
    c_1715_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xz1x10zz1x1zxxxx1z01x01011z0zzxzxxzxzzxxxxxzxzxxzzzxxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
