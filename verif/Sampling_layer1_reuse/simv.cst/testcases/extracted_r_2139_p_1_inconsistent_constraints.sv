class c_2139_1;
    integer i = -355;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2139_1;
    c_2139_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxzzx11xxz1z0xx1101z011z0x00zxxxxzxzzzxxxzxzzxzzxxzxzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
