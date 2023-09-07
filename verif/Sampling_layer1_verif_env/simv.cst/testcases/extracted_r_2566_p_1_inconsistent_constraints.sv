class c_2566_1;
    integer i = -426;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2566_1;
    c_2566_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01100x00x0z00zzxzx1xx0zz0xz0111xxxxzxzzzxzxzzzzxzzzzzxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
