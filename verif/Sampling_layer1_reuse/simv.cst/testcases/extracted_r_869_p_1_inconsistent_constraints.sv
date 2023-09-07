class c_869_1;
    integer i = -143;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_869_1;
    c_869_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00x10zx0z1100xz0z10zx01xz1x011zzxzxzxxzxxzzzxzxzzxzxxxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
