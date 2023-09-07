class c_2361_1;
    integer i = -392;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2361_1;
    c_2361_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zx0zzzzxz01zz10xx10zzz110zx1zxzxzzzxxxzzxxzzzzxzzxzzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
