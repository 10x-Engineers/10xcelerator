class c_678_1;
    integer i = -111;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_678_1;
    c_678_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0000xxz0x0x1000z1xz010x01zzz0z0xzzxzzxxxxzxxzxzxzxxzxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
