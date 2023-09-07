class c_624_1;
    integer i = -622;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_624_1;
    c_624_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz01xx00z1110x00xzz111x1x1z1xzzxzxxzzxzxxxzxxxxxxxzzxxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
