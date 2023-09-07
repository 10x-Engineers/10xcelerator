class c_1310_1;
    integer i = -217;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1310_1;
    c_1310_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0x10xxzzzx0xz1zx1z00zx01zx10xxxzzzzxxxxzxxxxxxxxzzxzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
