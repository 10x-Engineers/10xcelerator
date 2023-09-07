class c_3154_1;
    integer i = -524;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3154_1;
    c_3154_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xz0x01zz01zx1xxzz0zzx10x11110xxzzzxxxzxxxxxzzzxxxxxxxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
