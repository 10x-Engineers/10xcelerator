class c_29_1;
    integer i = -3;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_29_1;
    c_29_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001xx1x11zx0xx1zx0zx11zz000xzzzzzxzxxxzxzxxzzxxxzzxxzzxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
