class c_2755_1;
    integer i = -458;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2755_1;
    c_2755_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z10z11101zzz110x0x0zz0zx0zx0zzxxxzzxxzzzxxzzxzzzxzzxzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
