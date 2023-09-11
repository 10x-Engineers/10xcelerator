class c_179_1;
    integer i = -28;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_179_1;
    c_179_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1101z1z11zzzzxxz11z0z0x1z101z1xxxxzzxzxzzxxzzxzzzzzzxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
