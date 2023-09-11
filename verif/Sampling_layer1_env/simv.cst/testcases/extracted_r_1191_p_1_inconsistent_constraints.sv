class c_1191_1;
    integer i = -197;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1191_1;
    c_1191_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11x110x100zxz00x0xx0x101xx10z0xzxxzzzzzzzxzxxxzzzxxzzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
