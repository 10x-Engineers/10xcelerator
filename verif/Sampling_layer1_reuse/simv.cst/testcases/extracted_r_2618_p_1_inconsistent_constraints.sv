class c_2618_1;
    integer i = -435;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2618_1;
    c_2618_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zx101010x1z11z0x01x111xz0zxxzzzzxxzzxxzxzzzxzzxxzzxzxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
