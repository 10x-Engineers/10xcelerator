class c_2772_1;
    integer i = -460;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2772_1;
    c_2772_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01zz01zz0z1xxz11z111000xxx00x1zzxzzzzxzzxzzzxxzzzxxzzzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
