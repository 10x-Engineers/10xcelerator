class c_2442_1;
    integer i = -405;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2442_1;
    c_2442_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z001xz0xz111zx0zxx00xz0z00z0zzxxxxxzxxxxxzxxxxzxzzzxxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
