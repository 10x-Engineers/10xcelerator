class c_2510_1;
    integer i = -417;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2510_1;
    c_2510_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx01x0zzz1xxz1zxx0xxxx00x1zxz1xzxzzxzzxzzxzxzzxzxzzxzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
