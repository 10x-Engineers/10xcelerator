class c_1360_1;
    integer i = -225;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1360_1;
    c_1360_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z00z1x1xzz0x110111110z0xx1z0xzzzzxzzxzxzxzzxzzzxxzxxxzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
