class c_2384_1;
    integer i = -396;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2384_1;
    c_2384_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx10z1x1zxx11111zz1110zxx0111zzzxxzxzxxzzxxxxzxxxxzzxzxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
