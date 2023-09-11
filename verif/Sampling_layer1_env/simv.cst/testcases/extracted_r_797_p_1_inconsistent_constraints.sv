class c_797_1;
    integer i = -131;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_797_1;
    c_797_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0x0z000x1z0xz00xz1zx110z0xxz1xxxzxzzzxxxxxzxzxzzxxzxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
