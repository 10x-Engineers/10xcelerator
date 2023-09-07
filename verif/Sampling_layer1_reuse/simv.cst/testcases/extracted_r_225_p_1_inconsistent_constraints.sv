class c_225_1;
    integer i = -36;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_225_1;
    c_225_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz1z0xzx1xz10z0x00z11x01zzzx00xzxxzxxzxxxxzzzzzxzxzxzxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
