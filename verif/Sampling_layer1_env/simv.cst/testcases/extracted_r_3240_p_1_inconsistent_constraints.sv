class c_3240_1;
    integer i = -538;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3240_1;
    c_3240_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx010zz0x10xzzxz00xx0z1z011x00xzzxxzzxzxxxxzxzxxzzzzxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
