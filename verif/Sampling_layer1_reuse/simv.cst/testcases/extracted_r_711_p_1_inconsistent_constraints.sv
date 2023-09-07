class c_711_1;
    integer i = -117;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_711_1;
    c_711_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111z1z1x0001x0101x0101xxx0xx1z0xzzzxxzxxxxzzzxzzzzzxzxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
