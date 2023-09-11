class c_2151_1;
    integer i = -357;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2151_1;
    c_2151_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzzx1x1xx1x0100z1zz10z00zx0x00xxzxxzzxzxxzzxzxzzxxxxxzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
