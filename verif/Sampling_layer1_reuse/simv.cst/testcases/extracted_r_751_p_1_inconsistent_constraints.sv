class c_751_1;
    integer i = -124;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_751_1;
    c_751_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz0111xz10z00zz01xz0000x1zzzx0zzxzxzxzzxxzxxxxzzzxxxxxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
