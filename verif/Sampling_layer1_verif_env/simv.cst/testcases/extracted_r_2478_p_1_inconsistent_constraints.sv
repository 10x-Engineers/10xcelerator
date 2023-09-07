class c_2478_1;
    integer i = -411;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2478_1;
    c_2478_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11011zz1zz0001z0z0x0xx001000x1zzzxzzzxxxzzxzzzzzxxxxxzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
