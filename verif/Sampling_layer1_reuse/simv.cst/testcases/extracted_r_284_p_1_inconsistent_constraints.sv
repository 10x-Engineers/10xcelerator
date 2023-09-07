class c_284_1;
    integer i = -46;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_284_1;
    c_284_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xx1zz0xzz11x0xx00zz1z1xxz1110xxzxzxzzxzzxzzxzxzxxxxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
