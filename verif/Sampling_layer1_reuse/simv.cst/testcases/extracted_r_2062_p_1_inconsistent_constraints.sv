class c_2062_1;
    integer i = -342;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2062_1;
    c_2062_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00zxx0zzzz00x0xxxxz101xz011zxxzxxxzzzzxzzzxzxzzzxxxzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
