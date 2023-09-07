class c_836_1;
    integer i = -138;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_836_1;
    c_836_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx1z11zz111zx1z0x0xzxx1xz1xzz0xxzxzzxxxxxxzzxxzxzxzzxzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
