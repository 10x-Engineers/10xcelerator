class c_2986_1;
    integer i = -496;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2986_1;
    c_2986_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx0zx1z11z110100z0xx1110z1010xxzxxzxzxxzzzzxzzxzzzxzzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
