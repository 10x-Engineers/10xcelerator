class c_850_1;
    integer i = -140;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_850_1;
    c_850_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1z011xx0x1x0x1z0zz00100z0101zzxxxzzzzzzxzxxxxzzzzzxzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
