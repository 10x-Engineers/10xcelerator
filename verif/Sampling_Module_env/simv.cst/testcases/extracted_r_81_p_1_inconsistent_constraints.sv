class c_81_1;
    integer i = 81;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_81_1;
    c_81_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz0zz0z01x0xx01x01zx00x101011zzzxxxzxzzzzxxzzxzzxxzzxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram