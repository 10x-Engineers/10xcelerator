class c_3206_1;
    integer i = -533;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3206_1;
    c_3206_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zzx010z1z0x001x0xx0z1x0zx0zxzzzxxzzzxzxxzzxxzxxxzzxzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
