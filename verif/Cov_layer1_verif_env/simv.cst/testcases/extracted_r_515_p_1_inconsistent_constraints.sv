class c_515_1;
    integer i = -513;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_515_1;
    c_515_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxz1x10x0zxx0xx100x0110x0z1z10xzxzxxzzxzxxzxxzxzzzzzxzxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
