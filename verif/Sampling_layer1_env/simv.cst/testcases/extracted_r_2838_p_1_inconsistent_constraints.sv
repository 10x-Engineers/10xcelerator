class c_2838_1;
    integer i = -471;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2838_1;
    c_2838_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxzx1x0z0z000xxzx1z0z1z110x1xzzzzxzxxxzxxxzxzzzxzzzzxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
