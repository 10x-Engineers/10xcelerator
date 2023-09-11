class c_2922_1;
    integer i = -485;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2922_1;
    c_2922_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz0111xxz1z10z00z0x0z0z011x00xzxxxxxxxzxxzxzzxxzxzzxzzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
