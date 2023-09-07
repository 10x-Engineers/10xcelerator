class c_2031_1;
    integer i = -337;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2031_1;
    c_2031_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0x10zxz0zxz0100111z11zz0z0zxxxxzzxxxxzxxzxxzzzxxxxxxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
