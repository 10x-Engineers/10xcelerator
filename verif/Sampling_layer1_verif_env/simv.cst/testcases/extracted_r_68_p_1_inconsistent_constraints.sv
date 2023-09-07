class c_68_1;
    integer i = -10;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_68_1;
    c_68_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz00zz1x10xz0x0zzxxxx0xz1xxxzzxxxxzxxxzzzxxxxzzzxzxzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
