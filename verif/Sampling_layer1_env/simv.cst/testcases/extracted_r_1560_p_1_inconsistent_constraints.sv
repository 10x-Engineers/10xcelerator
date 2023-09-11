class c_1560_1;
    integer i = -258;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1560_1;
    c_1560_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01000x1zxx1x0x0x010z1z1x000xzxxzzzxxxzxzzxzzxzzzxzzzzxzxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
