class c_1799_1;
    integer i = -298;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1799_1;
    c_1799_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxzz1xzz1x0x1xxzxzxxzzxzzxxx10zzxxxxzxzzzzzxxxzzxxxzxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
