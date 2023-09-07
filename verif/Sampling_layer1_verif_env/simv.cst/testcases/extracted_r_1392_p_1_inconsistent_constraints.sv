class c_1392_1;
    integer i = -230;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1392_1;
    c_1392_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x10x01x10z0x0x010000xz1zzxx0zzzzxzzzxzzxxzxxxxxzzxxzzxxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
