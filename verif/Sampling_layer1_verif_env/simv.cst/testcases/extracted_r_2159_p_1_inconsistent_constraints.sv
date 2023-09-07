class c_2159_1;
    integer i = -358;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2159_1;
    c_2159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101xzx1xxzz0x100z0xzzz0x0101000zzzxzzzzzzxzzxxxxxzzxxzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
