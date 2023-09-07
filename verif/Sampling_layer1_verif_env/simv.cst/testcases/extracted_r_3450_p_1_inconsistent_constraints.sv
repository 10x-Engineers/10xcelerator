class c_3450_1;
    integer i = -573;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3450_1;
    c_3450_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0x10xzx1x01zxxxz0zz110xxzx10xzxzxxzzxzxxzzxxxzzzxxzxzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
