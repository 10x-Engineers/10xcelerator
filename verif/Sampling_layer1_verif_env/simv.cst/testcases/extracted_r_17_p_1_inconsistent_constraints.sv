class c_17_1;
    integer i = -1;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_17_1;
    c_17_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz0xxz010zz1zzz101zxxz01000z10xxxxzzxxxxxzzzzzxzxzzxxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
