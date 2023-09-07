class c_605_1;
    integer i = -99;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_605_1;
    c_605_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11zx001xx11zx11xzz11z100z0x010zxzzxxzzxzxzzzxzxxzxzxxxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
