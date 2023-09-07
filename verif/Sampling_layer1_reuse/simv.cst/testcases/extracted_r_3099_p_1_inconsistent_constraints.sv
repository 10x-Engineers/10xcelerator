class c_3099_1;
    integer i = -515;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3099_1;
    c_3099_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z1z1xx0101xz01x1zz0xx0z0x1z1xzxzxzxzxxxxzzxzxzzxxxzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
