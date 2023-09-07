class c_505_1;
    integer i = -83;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_505_1;
    c_505_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzxxx0z0x11z0z0z11x111x00x0x00xxzzzzzxzzzxxzzzxzxzzzxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
