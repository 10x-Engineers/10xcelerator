class c_50_1;
    integer i = -7;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_50_1;
    c_50_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zz11101zzx10xxzz00z1zzx0z1z0xzxxxxxzxxxzxzxxzzzxxxzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
