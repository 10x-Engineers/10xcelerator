class c_2392_1;
    integer i = -397;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2392_1;
    c_2392_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zx00zxz11zx1111100x1xx0z0xxxxxxzzxzzxzxzzzxzzzxxzzzxzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
