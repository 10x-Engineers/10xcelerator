class c_3040_1;
    integer i = -505;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3040_1;
    c_3040_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzx01xzx1zx0zxx111xzx1xx1zz01zxxzxzxxzxxzxzzzxxzzxxxzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
