class c_733_1;
    integer i = -121;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_733_1;
    c_733_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxxzx1110z11x1x010z10100z0z1zxzxxzzxxzzxzxzzxzxzzxzxzzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
