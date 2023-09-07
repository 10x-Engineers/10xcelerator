class c_2009_1;
    integer i = -333;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2009_1;
    c_2009_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z11z1x1z11101x0xx1zz100xx01x00xxzxxzzxxxzxxzxzzzxzzxzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
