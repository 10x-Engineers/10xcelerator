class c_2148_1;
    integer i = -356;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2148_1;
    c_2148_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z00x10x1110zxxxz00001x101zz1zzzzxxzxxzzzzzzzxzxxzxxzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
