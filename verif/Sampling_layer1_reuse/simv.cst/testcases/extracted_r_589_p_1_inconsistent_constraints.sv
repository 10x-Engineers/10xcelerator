class c_589_1;
    integer i = -97;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_589_1;
    c_589_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zzzzz10z00x0xx100zzz1x0z0011zxxzxzxxzzxzzxzzxxzzzzzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
