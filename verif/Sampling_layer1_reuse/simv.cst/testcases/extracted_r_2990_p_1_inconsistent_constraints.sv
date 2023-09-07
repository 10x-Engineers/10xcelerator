class c_2990_1;
    integer i = -497;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2990_1;
    c_2990_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0x1000zzxz0z0z10zz110zx000zx0xxxxxzxzxzxzxxzxxzzzzxzzxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
