class c_55_1;
    integer i = -8;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_55_1;
    c_55_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1x0zz00x111zxx0xz0xx10111x1zzxzxzxxzxzzzzzzxxzzxxxxxxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
