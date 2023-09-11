class c_2381_1;
    integer i = -395;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2381_1;
    c_2381_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11x01xxxz0001100z00zx001xx10z0zzzzxzxxxxxxzxzxzzzxzxzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
