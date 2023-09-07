class c_352_1;
    integer i = -57;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_352_1;
    c_352_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x00x10zxx0zzzxzz01zzxz11zx1z0zzzzxxzxxxzzzxzzzzzxzzxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
