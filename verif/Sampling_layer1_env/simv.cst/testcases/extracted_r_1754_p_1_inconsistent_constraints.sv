class c_1754_1;
    integer i = -291;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1754_1;
    c_1754_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxx10zx0zz0z0000xxxxz11x0101zxzzzxzxxzxzxzxxxzzxxzzxzxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
