class c_1009_1;
    integer i = -167;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1009_1;
    c_1009_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11110z01xz11xx010x0x001x011zzzxxzzxzzzxxzxzxxzxzzxzzzxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
