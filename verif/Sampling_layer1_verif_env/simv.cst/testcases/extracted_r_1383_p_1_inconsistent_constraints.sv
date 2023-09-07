class c_1383_1;
    integer i = -229;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1383_1;
    c_1383_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xxx0z11zx00zz00xzxxz1xx1z1x1zxxzxzxxxxzzxzzzxxzzzxxzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
