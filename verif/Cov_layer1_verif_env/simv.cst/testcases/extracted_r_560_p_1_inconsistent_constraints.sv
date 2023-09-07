class c_560_1;
    integer i = -558;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_560_1;
    c_560_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x00zxx1z11z0zz1100z0zxzz0x110zxzzxzzzzzxzzxzxxzzzxzzzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
