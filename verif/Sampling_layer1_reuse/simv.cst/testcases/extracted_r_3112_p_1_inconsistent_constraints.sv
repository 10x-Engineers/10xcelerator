class c_3112_1;
    integer i = -517;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3112_1;
    c_3112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110xxx1xx1zz0xzxx000xxzz00zx1x1zxxzzzxxxxzxxxzzxxzxzzxzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
