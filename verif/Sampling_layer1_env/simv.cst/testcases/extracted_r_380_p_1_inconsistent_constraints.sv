class c_380_1;
    integer i = -62;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_380_1;
    c_380_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzz1x1x10zzz1x11xz00z0z00zxxz1zxzxzzxxzzxxzzxxzxxzxzzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
