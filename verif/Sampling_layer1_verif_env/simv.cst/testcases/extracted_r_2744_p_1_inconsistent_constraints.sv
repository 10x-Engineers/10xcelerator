class c_2744_1;
    integer i = -456;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2744_1;
    c_2744_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz001xzzz0000zzz10z11z0zx1z0zz0xxzzzzzzzzzzzzzxzzzxxxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
