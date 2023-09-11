class c_1964_1;
    integer i = -326;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1964_1;
    c_1964_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01zz0x1x1z1x1x0zzzx1x1xzz0zz0xzzxxxzxzxzxxxzxzzzxzzzxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
