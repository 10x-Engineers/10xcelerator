class c_3225_1;
    integer i = -536;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3225_1;
    c_3225_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxxxx11x11zzx0000z0x1x01000z01xzzzzzzzxxxxxzxxzxxzxzzxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
