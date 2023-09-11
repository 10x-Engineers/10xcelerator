class c_1843_1;
    integer i = -306;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1843_1;
    c_1843_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx00x1x0zx1x11000x00x00xxx1xz01xzxzxxzzzxzxxxxxxxzzxzxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
