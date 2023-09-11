class c_1785_1;
    integer i = -296;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1785_1;
    c_1785_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11xx000011xz1zx0zz1zx10xx1z101xzxxxzxxzxxzzxzxzxxxzzzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
