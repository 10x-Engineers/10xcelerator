class c_3193_1;
    integer i = -531;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3193_1;
    c_3193_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzxxxx0zz1xx1z11zx10xxzzzz1xz1zxzzzzzzxzxxzxzxxzzzxzzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
