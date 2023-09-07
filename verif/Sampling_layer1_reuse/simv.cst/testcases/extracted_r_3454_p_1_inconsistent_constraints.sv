class c_3454_1;
    integer i = -574;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3454_1;
    c_3454_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx10z0x1zz10001x0z0011zxxzxxx00zzxxzzxzzxzxzxxzzzzzxxzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
