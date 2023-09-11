class c_2627_1;
    integer i = -436;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2627_1;
    c_2627_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zx0xx1z0z011010z1zzx00xzz1111xzzxxzzxxxxxzxzxxzzzzxxxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
