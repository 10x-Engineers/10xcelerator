class c_175_1;
    integer i = -28;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_175_1;
    c_175_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz00zzz0x11z1z00zxz1x0zz1xx0xxzzxzzzxxzzxzzxzzxzxxxzxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
