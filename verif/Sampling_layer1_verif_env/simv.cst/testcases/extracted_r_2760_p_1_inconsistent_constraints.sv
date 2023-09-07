class c_2760_1;
    integer i = -458;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2760_1;
    c_2760_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zx0zz110x1zz1x0zxxx10xxx0zxzzzzxxzzzxxzxzzzzxzzxzzzzxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
