class c_2527_1;
    integer i = -420;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2527_1;
    c_2527_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xzzz0zx0z00zz1z0zzxx1zzx1z1x1xxzzzxzzxxzxzzxxzxxxzzzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
