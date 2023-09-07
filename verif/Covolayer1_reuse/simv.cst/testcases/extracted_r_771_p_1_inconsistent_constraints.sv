class c_771_1;
    integer i = -769;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_771_1;
    c_771_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1z11xx0zxz1x0z100z10101zx1x00xzzxxzzzzzzxzzzzzzxzzzxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
