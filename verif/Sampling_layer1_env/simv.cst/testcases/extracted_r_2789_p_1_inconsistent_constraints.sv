class c_2789_1;
    integer i = -463;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2789_1;
    c_2789_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z11zx0xzxzxx11x1x11111xz10x0zzxzxzzxzzzxxxzxxzxzxzzzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
