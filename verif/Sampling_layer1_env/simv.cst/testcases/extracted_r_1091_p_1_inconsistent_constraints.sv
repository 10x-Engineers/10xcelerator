class c_1091_1;
    integer i = -180;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1091_1;
    c_1091_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01110xxz0x10100xzx1x1xxzx0z0011xzzxzxxzzzzzxxzzzzxxxxxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
