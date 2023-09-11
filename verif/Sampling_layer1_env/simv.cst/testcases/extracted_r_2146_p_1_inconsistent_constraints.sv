class c_2146_1;
    integer i = -356;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2146_1;
    c_2146_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x101zzzzxxxz11x1xz01zz0xz1x0zzzzxzzxzzzzxzxzxzzzzxzxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
