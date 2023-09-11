class c_2252_1;
    integer i = -374;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2252_1;
    c_2252_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x101zxxxz10x1z000z1xzxx010111zzzzzzzzxzzxzzxxzzxzxxxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
