class c_3010_1;
    integer i = -500;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3010_1;
    c_3010_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz010zzxxx1zx011z1z00xxz11xxz111xzzzzxxxzzzxzzxzxxzxzzzzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
