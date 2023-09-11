class c_3402_1;
    integer i = -565;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3402_1;
    c_3402_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0zzzzx1xzzzx0xx10z1zz1x1111zzzxxzzxxzzzzzzzxxzxzxxzxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
