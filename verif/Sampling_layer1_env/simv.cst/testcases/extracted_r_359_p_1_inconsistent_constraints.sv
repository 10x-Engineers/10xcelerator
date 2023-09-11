class c_359_1;
    integer i = -58;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_359_1;
    c_359_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01000xxx0zx0xz1x1xz11xxz10xx0z1zzzxxzzxxzzxxxxzxzzxzzxxxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
