class c_2526_1;
    integer i = -419;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2526_1;
    c_2526_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzz00z1000z11x01000z0zx10xxzz1xzzzxxzzxxxxxxxzzxzzzxzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
