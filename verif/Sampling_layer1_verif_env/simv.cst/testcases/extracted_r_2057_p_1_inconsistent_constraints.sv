class c_2057_1;
    integer i = -341;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2057_1;
    c_2057_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz11xz0xxz1x11x0xxx1zz1101xzz11zxzzxxzzzxzxxzzxxzxzxxzxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
