class c_1913_1;
    integer i = -317;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1913_1;
    c_1913_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x1x0xx10z0x1x0zxz01xx1x10xxzzzxxxxzzxxzzzzxzzxxxxzxzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
