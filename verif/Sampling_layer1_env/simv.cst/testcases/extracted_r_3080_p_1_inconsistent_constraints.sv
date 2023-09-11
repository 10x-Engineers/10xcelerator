class c_3080_1;
    integer i = -512;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3080_1;
    c_3080_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z111zz01xzz0x11011z1xx1x1xx0xxxxxxxxzzzxxzzxzxzzzxzxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
