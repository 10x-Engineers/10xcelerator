class c_1019_1;
    integer i = -168;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1019_1;
    c_1019_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xx0xzxz10z110z0xxz11x110xxzzzxxxxzzzzxzxzxxzzxzzzzzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
