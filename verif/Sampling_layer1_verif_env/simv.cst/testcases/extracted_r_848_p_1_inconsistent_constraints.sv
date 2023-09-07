class c_848_1;
    integer i = -140;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_848_1;
    c_848_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxzxxz0zxzxx0zz1z0x1111x1111xzzxxzzxzxxzzxzzzxxzzzxxxzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
