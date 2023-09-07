class c_3194_1;
    integer i = -531;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3194_1;
    c_3194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x0111xxz0xx000z111zz11001z101xzzzzxxxxxzzzxxzxzzxzxzzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
