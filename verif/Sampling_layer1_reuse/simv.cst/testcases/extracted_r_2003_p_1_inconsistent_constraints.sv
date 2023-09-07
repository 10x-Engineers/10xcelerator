class c_2003_1;
    integer i = -332;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2003_1;
    c_2003_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzz1xz010x1zzz0z0xz0101101xxx1zxzxzxzzxzzzxxzzzxzzzxzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
