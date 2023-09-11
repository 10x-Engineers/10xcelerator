class c_3429_1;
    integer i = -570;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3429_1;
    c_3429_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xx11xx01xx10zxxxx100zz00z11z0xzxzxzxxzxxzxzzxzxzzzzxzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
