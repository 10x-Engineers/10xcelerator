class c_2532_1;
    integer i = -420;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2532_1;
    c_2532_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1xzz1100x11x100zz11zz0x00xxz0zzxzzxzzzxzzzxzzxzxxxxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
