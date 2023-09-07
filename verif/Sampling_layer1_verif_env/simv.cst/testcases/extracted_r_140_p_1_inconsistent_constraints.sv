class c_140_1;
    integer i = -22;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_140_1;
    c_140_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz10z1xxx0101xxz101010zz0x01xz0xzzzxxxzxzxzzzxzxzzxzxzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
