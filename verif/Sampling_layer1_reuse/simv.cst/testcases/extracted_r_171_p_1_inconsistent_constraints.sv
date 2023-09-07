class c_171_1;
    integer i = -27;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_171_1;
    c_171_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxz1x0x1x011z11x1xxz0xz001xx00zxxxxxxzxzzzzzxxzzxxxzxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
