class c_3048_1;
    integer i = -506;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3048_1;
    c_3048_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x1z11z01zzxxx1xz011z10z1010x0xzzxxxxxxxzzxzxxxxzzxxxxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
