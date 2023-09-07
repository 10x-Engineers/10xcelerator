class c_3347_1;
    integer i = -556;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3347_1;
    c_3347_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz010x1z0zzz1z01010zz1xzz1z11zzzxxzzzzzzzxzxzzxzxxxxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram