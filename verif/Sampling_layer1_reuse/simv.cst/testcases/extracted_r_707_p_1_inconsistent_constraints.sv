class c_707_1;
    integer i = -116;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_707_1;
    c_707_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0xx0z1110x1110zxzxxxx01x10z1xxzxxxxxxxzzzxxxxzxzzzxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
