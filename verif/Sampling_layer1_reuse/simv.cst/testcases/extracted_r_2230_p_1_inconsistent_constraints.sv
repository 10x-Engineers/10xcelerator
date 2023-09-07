class c_2230_1;
    integer i = -370;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2230_1;
    c_2230_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zzxzzzz11z0011000010z10z10010zzxxxzzzxzzzzzxzzxzzxzxxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
