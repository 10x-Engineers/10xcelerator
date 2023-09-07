class c_1798_1;
    integer i = -298;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1798_1;
    c_1798_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1zx1zxzx10xz11xxzx00111xz010xxxxzzxzxzzxxxzzxzzxxzzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
