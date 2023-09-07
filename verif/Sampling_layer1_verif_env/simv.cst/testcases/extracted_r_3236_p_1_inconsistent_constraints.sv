class c_3236_1;
    integer i = -538;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3236_1;
    c_3236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11zz00zzz111z1x00zxz00xz10zx1zxzzzxxzxxxxxxzxxzxxzzxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
