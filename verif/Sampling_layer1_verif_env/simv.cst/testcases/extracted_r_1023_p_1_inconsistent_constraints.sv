class c_1023_1;
    integer i = -169;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1023_1;
    c_1023_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0011011xz11xx001x101x1zzxxxx1x0zzxxxxxxxzxxxxzzzzxzzzxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
