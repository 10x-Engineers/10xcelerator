class c_3186_1;
    integer i = -529;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3186_1;
    c_3186_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00100z1x111zx111z0001101011zxxxxzxzxzzxxxxzxzzzxxzzxzzxzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
