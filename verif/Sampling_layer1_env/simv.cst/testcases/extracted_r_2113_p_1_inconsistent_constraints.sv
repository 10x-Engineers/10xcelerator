class c_2113_1;
    integer i = -351;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2113_1;
    c_2113_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1001x0010x11xx1z0z0x0010z10zzxzzxzxzzzzxzzzzzxzxxzzxxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
