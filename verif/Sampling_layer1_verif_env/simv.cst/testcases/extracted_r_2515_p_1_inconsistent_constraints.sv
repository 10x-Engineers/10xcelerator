class c_2515_1;
    integer i = -418;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2515_1;
    c_2515_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00z1z10x00zzzxx0zxxxz101x110x1zzxzzzxzxxxzzzxxxxxzxxxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
