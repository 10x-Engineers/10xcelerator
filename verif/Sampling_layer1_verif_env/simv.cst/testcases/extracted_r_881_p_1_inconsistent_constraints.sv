class c_881_1;
    integer i = -145;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_881_1;
    c_881_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzx0x0z000z11z10x10x0xzx00x0xxzxzxxzzxzxxxzxxzxzzzzzzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
