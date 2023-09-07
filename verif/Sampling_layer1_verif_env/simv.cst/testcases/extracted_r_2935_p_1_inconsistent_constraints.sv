class c_2935_1;
    integer i = -488;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2935_1;
    c_2935_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0111z011x1zx0z11zzzx00zzx00xzxzxzzzxzzxzzzxxxxzxxzzzxxzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
