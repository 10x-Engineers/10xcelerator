class c_1766_1;
    integer i = -293;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1766_1;
    c_1766_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z11z0xx0x0x01zz0xz10xx01zx101xzxzxzzxzxzxzzxxzxxzxzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
