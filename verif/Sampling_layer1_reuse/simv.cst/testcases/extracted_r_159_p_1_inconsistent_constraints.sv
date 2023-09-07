class c_159_1;
    integer i = -25;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_159_1;
    c_159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z1001010z1xxz110x00z0z11x0z0zzzzzzxzzzzzzxxzxzxxzzzxzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
