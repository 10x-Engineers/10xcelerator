class c_251_1;
    integer i = -40;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_251_1;
    c_251_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x10zxx1xzxxz000x10100z0z0xxzz0zxzxxxxzzzxxzxxzzxxxzzxzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
