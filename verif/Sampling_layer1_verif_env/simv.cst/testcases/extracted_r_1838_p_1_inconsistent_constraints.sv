class c_1838_1;
    integer i = -305;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1838_1;
    c_1838_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx11z11zx111x0zz0011z1x1010x11zxzzzxxzzzzzzxzxxzxxxzzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
