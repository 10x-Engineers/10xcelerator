class c_3280_1;
    integer i = -545;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3280_1;
    c_3280_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz111z0xx000xxx0x01zzx1xx1x10xzzxxxzzzxxzxzxxzxzxzxxxzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
