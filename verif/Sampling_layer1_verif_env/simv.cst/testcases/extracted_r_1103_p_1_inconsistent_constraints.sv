class c_1103_1;
    integer i = -182;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1103_1;
    c_1103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1xxxxx10001zz11z0xzxx0100xx10xzzxxzxxxzzxxzzzzxxzzxzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
