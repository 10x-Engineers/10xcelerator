class c_280_1;
    integer i = 280;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_280_1;
    c_280_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1z1100z1x1xz0z0xx010z0z11x01zxzxzxzzzzxxxzzzzzzzzzzzxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
