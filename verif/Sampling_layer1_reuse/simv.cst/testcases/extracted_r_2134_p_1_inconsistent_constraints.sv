class c_2134_1;
    integer i = -354;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2134_1;
    c_2134_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx010z101xx01zz10zx1zz0x0z0z11zxzzxxxzzzzzzxxxzzxxxzzzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
