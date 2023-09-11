class c_1433_1;
    integer i = -237;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1433_1;
    c_1433_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z1x11x01zx0x11zx11110z1011011zxxzxzzxzzxxxxxxxxzzzxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
