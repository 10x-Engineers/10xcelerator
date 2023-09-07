class c_475_1;
    integer i = -78;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_475_1;
    c_475_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0x10x0xxz0001xzz1z1xx1z01x10xzzxxxzxzxzzxxzxxxxzzzxzzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
