class c_2700_1;
    integer i = -448;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2700_1;
    c_2700_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x0zx1x0zzzz0zx1zzz1z0x0zxxx0zzxzzxzxzxzzzxzzzzxxxxzzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
