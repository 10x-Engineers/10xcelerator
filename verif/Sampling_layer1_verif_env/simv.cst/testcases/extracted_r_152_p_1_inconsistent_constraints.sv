class c_152_1;
    integer i = -24;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_152_1;
    c_152_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z11011x11xx00z00z1zz110xxz000zzxzxzxzzzxzzxzzzxzxxxzxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram