class c_1642_1;
    integer i = -272;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1642_1;
    c_1642_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx00x00111xx0111101x00z1z00xx1zzzxxxxxzxzxxxxzzzxxxzzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
