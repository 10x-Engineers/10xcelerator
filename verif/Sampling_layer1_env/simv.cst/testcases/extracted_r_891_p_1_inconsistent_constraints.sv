class c_891_1;
    integer i = -147;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_891_1;
    c_891_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1z1xxz0100xxxxz1xx1zz10zxx0zzxxzxxzzzxzxxzzzxxzxzzzxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
