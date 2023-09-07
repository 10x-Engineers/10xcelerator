class c_3400_1;
    integer i = -565;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3400_1;
    c_3400_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzz11x0x1xz0z10z01001z1xz0zxxxxzzzxxzxzzzxzzxxxzzzxxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
