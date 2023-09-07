class c_1873_1;
    integer i = -311;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1873_1;
    c_1873_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z1z0x1z0zxxzzzxz0z10xz010x001xzzzxzzxzzzxzzzxzxzxxxxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
