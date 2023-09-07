class c_2027_1;
    integer i = -336;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2027_1;
    c_2027_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0xx000z00x1x1zzx0z0z11z0x0zzzzxzzzzxxzzxxxzzxzzzzzzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
