class c_2596_1;
    integer i = -431;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2596_1;
    c_2596_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1zz0xzxzxxzz11xxx1x11z100100zzxzxzxxxxzxxzxzxzzzzzxzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
