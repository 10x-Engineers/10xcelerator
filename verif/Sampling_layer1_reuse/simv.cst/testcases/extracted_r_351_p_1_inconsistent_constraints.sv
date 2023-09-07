class c_351_1;
    integer i = -57;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_351_1;
    c_351_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1101xzz0001xz1zzz0010011xzx0100zzxzxzxzzzzxzxzzzzzxxxzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
