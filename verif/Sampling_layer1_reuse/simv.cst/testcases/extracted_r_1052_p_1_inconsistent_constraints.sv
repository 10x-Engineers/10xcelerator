class c_1052_1;
    integer i = -174;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1052_1;
    c_1052_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x111zz0zzx0z00x10z10xxxxzz001xxzxxzzzzzxxxxzzxzxxzxzxzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
