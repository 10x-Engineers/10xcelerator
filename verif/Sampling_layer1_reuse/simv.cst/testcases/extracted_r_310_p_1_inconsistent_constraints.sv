class c_310_1;
    integer i = -50;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_310_1;
    c_310_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xx1x1x10101xx11110100z10111z0zzxxxzxxzzzzxzzxxxzzxxzxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
