class c_2150_1;
    integer i = -357;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2150_1;
    c_2150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0xx0zz101xx1zzz0zzzzzx0xzx0zxzzzxzxxzzxzzxxzzzxxzzzxxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
