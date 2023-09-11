class c_2331_1;
    integer i = -387;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2331_1;
    c_2331_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0zzx01011x1x1z00x00xz10xz1z11zxxxzzxzxxzzzzxxzzzxxzzxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
