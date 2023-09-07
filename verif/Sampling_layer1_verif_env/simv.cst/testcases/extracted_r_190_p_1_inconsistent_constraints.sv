class c_190_1;
    integer i = -30;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_190_1;
    c_190_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100zxz0000z01xx00zxxzx1z1xxx0x1zzzzzxxzzxxzxxzzxxxxzzzxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
