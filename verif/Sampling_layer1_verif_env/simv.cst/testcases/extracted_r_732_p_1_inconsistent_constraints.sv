class c_732_1;
    integer i = -120;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_732_1;
    c_732_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1x1z1zx111zz1110x0x1zx100000xzzzxxxzxzzxxzzxzzxzzzzxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
