class c_2383_1;
    integer i = -396;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2383_1;
    c_2383_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzx000111x0x0xxzxxz1x00x0x1xx1zzxxzzzxzzzzxzzxzxzzzzxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
