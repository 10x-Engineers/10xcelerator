class c_846_1;
    integer i = -139;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_846_1;
    c_846_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z11xz0z1000zzz01x1x100001zzxzxxxzxzzzxzzxzzxxzzzzxxzzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
