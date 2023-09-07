class c_2055_1;
    integer i = -341;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2055_1;
    c_2055_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111011xx11x0x1xx1101xx00z1zxzxzxzzzzzxzzzxxxzxxxxzzzzzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
