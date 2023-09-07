class c_1400_1;
    integer i = -232;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1400_1;
    c_1400_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zxx000x11z00010zz0zzxz0zz10x1zxzzxzxzzxzxxxxxzzxzzzzzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
