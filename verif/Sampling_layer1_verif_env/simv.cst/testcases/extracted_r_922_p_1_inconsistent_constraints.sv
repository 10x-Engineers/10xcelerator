class c_922_1;
    integer i = -152;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_922_1;
    c_922_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x11x0zz1z01zxzzzz1xx01xxxz1x1xzzzxxxzxxxzxxxxxxzxxxxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
