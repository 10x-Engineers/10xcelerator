class c_43_1;
    integer i = -6;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_43_1;
    c_43_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz11z10z1x101xxz1111zx10xzzz10xxzzxxzzzzxxzzxzxzzxzzxzxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
