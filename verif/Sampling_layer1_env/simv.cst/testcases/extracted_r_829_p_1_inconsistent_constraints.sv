class c_829_1;
    integer i = -137;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_829_1;
    c_829_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z0zzxz1111zzx0xx10zzxx0001101xxxxxxxxzxzxxzxzzxzzzxxzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
