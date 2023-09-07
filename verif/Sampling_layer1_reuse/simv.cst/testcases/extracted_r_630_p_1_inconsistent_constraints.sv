class c_630_1;
    integer i = -103;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_630_1;
    c_630_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111zx001z11xxxx10z11x011z11000xzzxxxxxzxzzxzxxxxxxzzxxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
