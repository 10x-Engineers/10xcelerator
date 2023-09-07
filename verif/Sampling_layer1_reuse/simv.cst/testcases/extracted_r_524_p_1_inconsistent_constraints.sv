class c_524_1;
    integer i = -86;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_524_1;
    c_524_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxx001zx10zz1z100z0zzz11x01x10xxzxzxzxzxxzzxxzzzzxzxxzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
