class c_283_1;
    integer i = -46;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_283_1;
    c_283_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xz000xxxx1zz11x0zzx11zxx0xz0zzxzzzxzzxzzzzzxxxxxxxxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
