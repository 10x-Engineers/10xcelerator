class c_959_1;
    integer i = -158;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_959_1;
    c_959_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxx10zzxzz01zzx00x10zxx10x000xzzxzzzxzzxzxxzzxzxxxzzxxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
