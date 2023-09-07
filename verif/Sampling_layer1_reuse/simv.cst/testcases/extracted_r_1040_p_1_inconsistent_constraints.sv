class c_1040_1;
    integer i = -172;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1040_1;
    c_1040_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1100z1xxx0xxzz0x011xz1101000x1zzzzxxxxzxzzzxzxzzxxxzzzxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
