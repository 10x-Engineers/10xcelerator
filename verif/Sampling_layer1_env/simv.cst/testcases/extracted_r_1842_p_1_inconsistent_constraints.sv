class c_1842_1;
    integer i = -305;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1842_1;
    c_1842_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0101x1111z00xzzx1xxz0x0zx1zz1x0xzxxxzxzzzxxxzxxxxxxzzzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
