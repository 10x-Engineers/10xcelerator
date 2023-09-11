class c_360_1;
    integer i = -58;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_360_1;
    c_360_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111101xxx101100xx01011z1zzx01010zzxxxxzxzxxzxxxxzzzzzzzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
