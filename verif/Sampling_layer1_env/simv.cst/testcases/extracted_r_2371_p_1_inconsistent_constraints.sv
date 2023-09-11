class c_2371_1;
    integer i = -394;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2371_1;
    c_2371_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00z101111101xx10xxzzzxzz0xx011zxzzxzxxxzzzzxzzzzzzxzxzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
