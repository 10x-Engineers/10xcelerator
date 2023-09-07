class c_3141_1;
    integer i = -522;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3141_1;
    c_3141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z1z0x1101zzz110zzz01zz01zxzzxzxzxxzzzxzzxxxzzzzxxxzzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
