class c_2398_1;
    integer i = -398;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2398_1;
    c_2398_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxx0zz0x11xzzz1z100x0x1zzx1zx0xzzxzxzxzxzzxxxzxzxzxxxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
