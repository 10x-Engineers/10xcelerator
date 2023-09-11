class c_2571_1;
    integer i = -427;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2571_1;
    c_2571_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz011x0xzzxz00x1x0z00z0zz00zz0xxxzxzzzxxzzzzxzzxzzzxzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
