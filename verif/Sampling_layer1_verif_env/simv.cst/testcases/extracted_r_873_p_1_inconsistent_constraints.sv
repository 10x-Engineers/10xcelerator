class c_873_1;
    integer i = -144;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_873_1;
    c_873_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz1001zzz11zz0xxxx0100x1xx0x00xzzzzxxxzxxxxzxzxzxzxxxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
