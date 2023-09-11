class c_327_1;
    integer i = -53;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_327_1;
    c_327_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz001zx0xxxxx10z1z0zzz0xx0xx01xxxzxxxxxxxzxzxzxxxxxzxzxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
