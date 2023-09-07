class c_1173_1;
    integer i = -194;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1173_1;
    c_1173_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z11zz00zx01x010zx00000z1x0000xzxxzxzxxxzxxxzxxxxzxxzxxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
