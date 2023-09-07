class c_2083_1;
    integer i = -346;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2083_1;
    c_2083_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx01z0z0z0x0z0x001zx00zzxz11zzzzxzxzxxxxzxxxxzxxzzxzxzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
