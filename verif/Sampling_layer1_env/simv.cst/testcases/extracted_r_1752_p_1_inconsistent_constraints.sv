class c_1752_1;
    integer i = -290;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1752_1;
    c_1752_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxz01zz0zz0z10x10xz0x001xzx1zzxzxxzzzxzzxxxxxzzzzxzxxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
