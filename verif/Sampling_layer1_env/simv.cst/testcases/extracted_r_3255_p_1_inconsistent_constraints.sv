class c_3255_1;
    integer i = -541;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3255_1;
    c_3255_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011x0z0xx010z0zzzxz0x100111x1z0zxxxxzxzzzzxxxxxxzzxxxzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
