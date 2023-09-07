class c_203_1;
    integer i = -32;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_203_1;
    c_203_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001111z0101xx0x011zzxx0z11z11000xzzxzxzxzzzxzxzxxzzzxxxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
