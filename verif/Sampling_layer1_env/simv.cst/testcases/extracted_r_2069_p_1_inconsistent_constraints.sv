class c_2069_1;
    integer i = -343;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2069_1;
    c_2069_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100x0x00z11x00011z1zz1001zz1x0xxzxzxzxzzzzzzzxxzxzzxzzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
