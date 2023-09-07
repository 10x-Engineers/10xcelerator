class c_2925_1;
    integer i = -486;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2925_1;
    c_2925_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxz0z1z111x0xxz0z1zzz011z01x00xzzxxxxzxxzzzzxzzzxzxxzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
