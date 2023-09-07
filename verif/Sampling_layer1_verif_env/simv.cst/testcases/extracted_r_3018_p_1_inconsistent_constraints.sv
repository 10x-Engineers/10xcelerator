class c_3018_1;
    integer i = -501;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3018_1;
    c_3018_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx1z1zz0xx11xzxzz0xz0xz00010zzxxxxxxzxzxzzzxxzzxzzxzzzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
