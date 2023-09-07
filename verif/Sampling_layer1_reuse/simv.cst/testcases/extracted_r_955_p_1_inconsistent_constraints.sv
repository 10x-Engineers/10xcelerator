class c_955_1;
    integer i = -158;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_955_1;
    c_955_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1xxx110111zz0zxz1z1zzxx0010xzxxzxxzzzzxzzxzxzzzxzzxxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
