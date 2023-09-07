class c_2920_1;
    integer i = -485;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2920_1;
    c_2920_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xx100xxxxx1zx1z0zz10x000zzxxxzzzzzxxzzxxxxxxzxzzxxzzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
