class c_2336_1;
    integer i = -388;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2336_1;
    c_2336_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1zxx1z1zzz0x1zzx0x1zz111z00zxxzzxxxzzzzzzzzzzxxzzxxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
