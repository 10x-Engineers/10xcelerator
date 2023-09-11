class c_22_1;
    integer i = -20;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_22_1;
    c_22_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z10z0zz000x11x00zzzz1x0xz10x1xzzzzxzzxxxzzzzzzzxxzzzxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
