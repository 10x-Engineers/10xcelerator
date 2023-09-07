class c_1139_1;
    integer i = -188;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1139_1;
    c_1139_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111010xxz0x0x01xx11x000xz11000xxxzxxzxxzxzxzzxxzxxzxzxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
