class c_3340_1;
    integer i = -555;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3340_1;
    c_3340_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1x0x0x0z111x11x1zx1xx01x0xx10zzxxxxxzxxzxxzzzxxzzxzzzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
