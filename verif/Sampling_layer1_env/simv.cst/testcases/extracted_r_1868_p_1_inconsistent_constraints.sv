class c_1868_1;
    integer i = -310;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1868_1;
    c_1868_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10z0x100xx1z00x0001xx00x1001x0xzxxzzxzxzxzxzzxzxxzzxxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
