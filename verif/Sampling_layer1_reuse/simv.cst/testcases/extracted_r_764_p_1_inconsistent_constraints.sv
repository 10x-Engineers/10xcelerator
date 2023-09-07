class c_764_1;
    integer i = -126;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_764_1;
    c_764_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx111zx11x0xzz0010x0zxx1z0xzz01xxxzxxzxzxxzzxxxzxxxzzxzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
