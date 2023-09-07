class c_3398_1;
    integer i = -565;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3398_1;
    c_3398_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11x10x0xx0xz0xx10zx110xxxx11z0zxzzxzxzzzxzxzxxxxzzzzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
