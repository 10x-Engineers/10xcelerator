class c_493_1;
    integer i = -81;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_493_1;
    c_493_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x01xx0zz1x0z100x1z101x00xzx0xxzxzzzzxxzxxzzxxzxzzxxzzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
