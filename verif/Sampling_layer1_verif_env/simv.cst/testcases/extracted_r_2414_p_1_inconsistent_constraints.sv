class c_2414_1;
    integer i = -401;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2414_1;
    c_2414_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xxxx1xxz00z0zzz11x1x11x1001x1xxxxxxxxzxzzxxzxzzzxxzzxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
