class c_3420_1;
    integer i = -568;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3420_1;
    c_3420_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz0xxzxxxxx1z11zzx1z1x010101zzxzzxzzzxzxxzxzxzxzzxzzzzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
