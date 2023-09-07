class c_227_1;
    integer i = -36;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_227_1;
    c_227_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0z10100xz01zz0z00x1x11zxx10zzzzxzxxzzxzxzxxxxxzxzxxzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
