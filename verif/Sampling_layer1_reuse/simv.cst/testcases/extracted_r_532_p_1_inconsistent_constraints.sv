class c_532_1;
    integer i = -87;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_532_1;
    c_532_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xz0x01zxx1x1zx010z1z1x1zzzz0xxzxzzzzxxzzxxxxxxzxzxxxzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
