class c_437_1;
    integer i = -71;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_437_1;
    c_437_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111zx1zzx0z11x100x1100x100zzxxxxzxzxzzxxzzxzxxzxzxzzzxzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
