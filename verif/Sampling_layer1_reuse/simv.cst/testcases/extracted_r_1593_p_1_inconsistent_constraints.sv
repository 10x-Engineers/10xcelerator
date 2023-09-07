class c_1593_1;
    integer i = -264;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1593_1;
    c_1593_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1zz0z00z11xxz1zxxzz0xz100zx11zxzzxzxxzzxxzzxzxzzzxxxzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
