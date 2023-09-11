class c_2116_1;
    integer i = -351;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2116_1;
    c_2116_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z100z0xz1xz11x011xzzxxzx0x1x101xxzxxxzzzzxzxxxxzzxxzzzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
