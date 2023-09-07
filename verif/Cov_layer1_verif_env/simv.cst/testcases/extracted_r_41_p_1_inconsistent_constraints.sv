class c_41_1;
    integer i = -39;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_41_1;
    c_41_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0111x0011x10z1x000zz1x001x01x1zxzxxxzxzzxzzxzzzxzzxzxzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
