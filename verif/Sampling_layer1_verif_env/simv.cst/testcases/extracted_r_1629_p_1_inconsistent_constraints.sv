class c_1629_1;
    integer i = -270;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1629_1;
    c_1629_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzzzx10x0100z01zxzxx1x1zzzzx00xzxxzzzxxzzxzzxzzzxzzzxzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
