class c_2400_1;
    integer i = -398;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2400_1;
    c_2400_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzx11zz0100x00z0z1zxz0z1x1zxx0xzxxxxzzzxzxxzxzzzzzzxxzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
