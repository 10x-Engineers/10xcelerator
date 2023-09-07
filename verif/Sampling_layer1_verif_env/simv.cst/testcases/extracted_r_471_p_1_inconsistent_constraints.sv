class c_471_1;
    integer i = -77;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_471_1;
    c_471_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zzz0z0x11z10z1xxx0xx10zz11xzxxxzzxxzxzzzxzzxzzzxxxxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
