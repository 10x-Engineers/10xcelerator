class c_81_1;
    integer i = -12;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_81_1;
    c_81_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11011101xx00x00x1z1z0zxz10x1x0x0zxzxzxxzxxxxzzzxxxxzxzzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
