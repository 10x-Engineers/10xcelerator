class c_903_1;
    integer i = -149;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_903_1;
    c_903_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzx00000z111z1x0z01zx01zxzx0xzzxzxxxxxxxxxzxzzzxzzxzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
