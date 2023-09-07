class c_1413_1;
    integer i = -234;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1413_1;
    c_1413_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xx0010x1z0z0x1x00x1xxz11zz101xxxxxxxzxxxxxzxxzxzxzzxxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
