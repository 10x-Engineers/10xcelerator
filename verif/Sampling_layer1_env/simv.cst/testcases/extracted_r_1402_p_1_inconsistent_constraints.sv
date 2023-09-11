class c_1402_1;
    integer i = -232;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1402_1;
    c_1402_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011z1xzzzzx1z11zx101xxzxz1z0111zzxzzzzzxxzzzxzzzxzxzzxzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
