class c_2166_1;
    integer i = -359;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2166_1;
    c_2166_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xx0x00xx1x10x0z10xx10x1z00111zzzzzxzxxxzzxxzzzxzxxzzxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
