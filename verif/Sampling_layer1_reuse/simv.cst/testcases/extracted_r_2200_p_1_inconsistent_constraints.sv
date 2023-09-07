class c_2200_1;
    integer i = -365;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2200_1;
    c_2200_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx01001zxx110001111101zzzz1x00xzxzzxzzxzxxzxxzzxxxzzxzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
