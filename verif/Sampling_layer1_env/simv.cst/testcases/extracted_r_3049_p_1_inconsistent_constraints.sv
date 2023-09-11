class c_3049_1;
    integer i = -507;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3049_1;
    c_3049_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11001xxz11x10z1z1110z010x00zxxzzxzzzzzxzzzzzzzzxxxzzxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
