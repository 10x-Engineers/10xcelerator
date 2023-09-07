class c_2225_1;
    integer i = -369;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2225_1;
    c_2225_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1xxzx01zx000x11xzz0z0x1z0xzz0xxzxzzzxxxxxzxzxzzxzzxxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
