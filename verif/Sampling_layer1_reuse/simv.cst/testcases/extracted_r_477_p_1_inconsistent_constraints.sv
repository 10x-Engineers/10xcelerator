class c_477_1;
    integer i = -78;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_477_1;
    c_477_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000zx1x10000z00zx11zxz1z00zzzzzxxzzxzzxzzxzzxzzzzzzxzzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
