class c_3185_1;
    integer i = -529;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3185_1;
    c_3185_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101111zzx0z1101xzxzz10zz0010x1x0zzxzzxzxxzxxxxzxzzzxxzzxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
