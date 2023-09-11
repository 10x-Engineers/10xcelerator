class c_306_1;
    integer i = -49;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_306_1;
    c_306_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zzz110001zx00z0xz001zx10zx1x1xxzxxxxxzxzxxzzzzzzzzxxxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
