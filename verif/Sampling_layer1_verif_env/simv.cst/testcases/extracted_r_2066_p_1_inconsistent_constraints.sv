class c_2066_1;
    integer i = -343;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2066_1;
    c_2066_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzzxx1x10zz00111z0001zxxxx111zxxzzzzxxxzzzxxxzxzxzzzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
