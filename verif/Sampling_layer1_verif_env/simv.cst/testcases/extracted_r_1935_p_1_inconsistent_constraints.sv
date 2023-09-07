class c_1935_1;
    integer i = -321;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1935_1;
    c_1935_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110z0000x1zz0zx1110001z0xx11z0xxzxzxzxzxzxzxxzzxzxzxxxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
