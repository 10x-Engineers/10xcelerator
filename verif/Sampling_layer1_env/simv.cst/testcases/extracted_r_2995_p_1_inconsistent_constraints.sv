class c_2995_1;
    integer i = -498;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2995_1;
    c_2995_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z10x100x10z1xzzz1zz0xzx011zxx1zzxxzxzxxzzxxzzzzxxzxzzzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
