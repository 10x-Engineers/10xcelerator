class c_2034_1;
    integer i = -337;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2034_1;
    c_2034_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xxzxzxzz100z1x001100z111zxz0zzxzxxxxzxxxxxxxzxxzzxzzzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
