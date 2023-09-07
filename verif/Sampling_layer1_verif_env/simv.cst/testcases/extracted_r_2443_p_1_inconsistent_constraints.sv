class c_2443_1;
    integer i = -406;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2443_1;
    c_2443_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x111zxz0z1x0z1z1zx0x1z11xx100zzxxzxxxzzxzxxzzxzzzzzxxzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
