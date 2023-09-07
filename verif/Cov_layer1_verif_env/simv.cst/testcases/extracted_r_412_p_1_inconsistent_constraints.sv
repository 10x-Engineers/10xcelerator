class c_412_1;
    integer i = -410;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_412_1;
    c_412_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10x0z0zxxxx010z0z0xx011x1z1xxxzzxzzxzzxzzxzxxxzxxzxzxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
