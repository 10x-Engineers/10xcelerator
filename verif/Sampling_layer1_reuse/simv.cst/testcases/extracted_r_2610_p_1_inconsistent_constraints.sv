class c_2610_1;
    integer i = -433;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2610_1;
    c_2610_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx10z11z0xzxxzzxx11x1zz10xx0zzxzxxzzxxzxzxxzzxzxxzxxxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
