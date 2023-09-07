class c_432_1;
    integer i = -70;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_432_1;
    c_432_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x11zz0x110xzx0zxxx000001xxxxz0xxxzxxzzxzxzzzzzxxxzzzxzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
