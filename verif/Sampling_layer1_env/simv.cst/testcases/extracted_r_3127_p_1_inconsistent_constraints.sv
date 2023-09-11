class c_3127_1;
    integer i = -520;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3127_1;
    c_3127_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z10x111001z101x1z11zz00001x1xzxxzzzxxxxzxzzxzzzzzzzxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
