class c_3336_1;
    integer i = -554;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3336_1;
    c_3336_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0zxxzx01x110001x00xzzz01x11zxxxzzxxxzzzzxxzzzzxzzxxxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
