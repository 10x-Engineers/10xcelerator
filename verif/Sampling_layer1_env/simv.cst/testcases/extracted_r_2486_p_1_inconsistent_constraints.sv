class c_2486_1;
    integer i = -413;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2486_1;
    c_2486_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1xx100z010z0xz01zzxx011x0111zzzxzxxzzxzxzxzzzxzzzzzxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
