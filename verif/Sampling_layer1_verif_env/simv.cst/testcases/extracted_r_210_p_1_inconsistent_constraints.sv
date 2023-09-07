class c_210_1;
    integer i = -33;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_210_1;
    c_210_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z010z101xxzzzxzz0x1xxzxz1z0x00zzxzxzxxxxxzzzxzzzzzxxzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
