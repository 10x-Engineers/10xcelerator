class c_1544_1;
    integer i = -256;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1544_1;
    c_1544_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10z00zz101zzz1xxz01x001010xz1xzzzxzzxzxzxzzxxzzzxzxzzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
