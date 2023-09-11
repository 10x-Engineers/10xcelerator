class c_370_1;
    integer i = -368;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_370_1;
    c_370_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z11xxx0z1xzx1xx00z0zx1x0x01x0xxzzxzxxzxxxzxxzxzxxxzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
