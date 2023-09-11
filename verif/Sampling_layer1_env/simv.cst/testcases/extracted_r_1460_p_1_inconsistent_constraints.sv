class c_1460_1;
    integer i = -242;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1460_1;
    c_1460_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz01x000000z1x1x0xx0110z1zz01zzxzxxxzxxxxxxzzzxxxzzxxzxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
