class c_450_1;
    integer i = -448;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_450_1;
    c_450_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111001100100zx0xzxx10z1x10xzxzxxzxzzxxzxzxxzxxxzzzzzxzxxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
