class c_3014_1;
    integer i = -501;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3014_1;
    c_3014_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z11000xx101xz0z0zzzz00111x011xzxxxxzzzxzzzzxzxxxzzzxxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
