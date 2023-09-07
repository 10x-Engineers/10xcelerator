class c_2639_1;
    integer i = -438;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2639_1;
    c_2639_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz10z0z00z1x0zzzz10z01xx01xz01xxxzzzxzxxxxxzzzxzzzzxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram