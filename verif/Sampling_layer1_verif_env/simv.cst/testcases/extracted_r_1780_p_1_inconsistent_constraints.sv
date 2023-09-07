class c_1780_1;
    integer i = -295;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1780_1;
    c_1780_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zzx0xzxxz11110xzzz0001xxz0x0zzzxxzxzxxzzzxzzzzzxxzzxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
