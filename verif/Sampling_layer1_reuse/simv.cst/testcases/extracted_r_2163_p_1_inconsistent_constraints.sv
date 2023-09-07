class c_2163_1;
    integer i = -359;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2163_1;
    c_2163_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx011zz1xxz110001xz1zx1z00xzz001xxzxxxzxzxxxxzxxzxzxzxzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
