class c_2707_1;
    integer i = -450;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2707_1;
    c_2707_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x11zx00zz0xzx1xz10xzzzxz001z10xzzzzzxzzzzzxxzxxxzzxxzxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
