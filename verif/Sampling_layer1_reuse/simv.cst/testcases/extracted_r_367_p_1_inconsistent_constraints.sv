class c_367_1;
    integer i = -60;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_367_1;
    c_367_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01xzx1x11x0000zzzx010zzz0zzz0xzxxxxxxzxxxxzzzzzxxzzxxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
