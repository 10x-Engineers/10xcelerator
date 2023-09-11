class c_3263_1;
    integer i = -542;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3263_1;
    c_3263_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11000x11zx11zzz00xzz0x0z10x0100zxxxzxzzzxzzxxzzzzxxzzzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
