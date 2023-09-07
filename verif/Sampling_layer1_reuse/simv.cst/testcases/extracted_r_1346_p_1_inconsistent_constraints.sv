class c_1346_1;
    integer i = -223;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1346_1;
    c_1346_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xx101z01z000xzxzzzxzx1z10zzxxxzxzzxxxxzxzxxzzxxxxxxxxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
