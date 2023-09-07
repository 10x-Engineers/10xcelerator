class c_380_1;
    integer i = -378;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_380_1;
    c_380_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z11zx1100x111x1xzxx01x01z0010xzzzxzzxzxxzzxzzxzxxzzxzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
