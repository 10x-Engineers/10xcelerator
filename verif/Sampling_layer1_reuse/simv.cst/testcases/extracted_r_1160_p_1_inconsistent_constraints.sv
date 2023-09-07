class c_1160_1;
    integer i = -192;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1160_1;
    c_1160_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zx0x1xz11x1z11xxxxzz11011zzzzzzzxzxxxxzzzxxxxzxxxzzzzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
