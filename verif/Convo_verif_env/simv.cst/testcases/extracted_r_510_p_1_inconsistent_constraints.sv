class c_510_1;
    integer i = 510;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_510_1;
    c_510_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0z011z1x0zxz110010zz10110110xzzxzzxxxzzxzxzxxzxzxxzzzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
