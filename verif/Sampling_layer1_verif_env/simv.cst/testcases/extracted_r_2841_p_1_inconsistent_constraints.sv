class c_2841_1;
    integer i = -472;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2841_1;
    c_2841_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0zzx00zz11xzz0xzzx1zzz1z11xx1xzzzzxxzxzzxzxzzxzzzzxzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
