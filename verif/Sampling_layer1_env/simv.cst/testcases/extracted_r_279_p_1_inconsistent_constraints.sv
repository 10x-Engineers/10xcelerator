class c_279_1;
    integer i = -45;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_279_1;
    c_279_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11x0011001xzzz01xxx0zzx01001xzzzzxzxxxxxxxzxxxxxxxzxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
