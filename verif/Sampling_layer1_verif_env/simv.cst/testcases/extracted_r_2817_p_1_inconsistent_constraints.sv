class c_2817_1;
    integer i = -468;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2817_1;
    c_2817_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x111z0zx0111x1110000zzxzxz011xxzxxxxzxxxxxxzzxzzxxxxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
