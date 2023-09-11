class c_2011_1;
    integer i = -334;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2011_1;
    c_2011_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx10zxz1010z0z00z10111zx00z00xxxzxxzzxxzzxxzxzzxxxzzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
