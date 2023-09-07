class c_3102_1;
    integer i = -515;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3102_1;
    c_3102_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz01xx11110z00xx1xz1x1zzx0zz10zzxxxxzzzzxxxzxzxzzxzzzzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
