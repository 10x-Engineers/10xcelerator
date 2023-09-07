class c_143_1;
    integer i = -22;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_143_1;
    c_143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x10z1zz0xz010zzx1x1xzzz0z1x0zzzxzxzzzzzxxxxzzzzxzzzxxxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
