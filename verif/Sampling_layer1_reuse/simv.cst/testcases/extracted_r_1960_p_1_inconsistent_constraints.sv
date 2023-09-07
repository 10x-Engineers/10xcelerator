class c_1960_1;
    integer i = -325;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1960_1;
    c_1960_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z111x0x1z00zz1x00xzzzzzzxz000xxzxxzzxxxzzzzzzxzzzxzzxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
