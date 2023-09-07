class c_421_1;
    integer i = -69;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_421_1;
    c_421_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1x1x010xxz11x0z100xzz0z11x1zzzxxzxzzxzzzzzxzzzxzzzxxzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
