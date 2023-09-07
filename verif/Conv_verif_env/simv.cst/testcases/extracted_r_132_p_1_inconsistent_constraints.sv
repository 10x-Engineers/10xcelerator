class c_132_1;
    integer i = 132;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_132_1;
    c_132_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xxz1z10110110z0zx0z1111101xxzzxzzxxxxxxxxzzzzxxxzxxzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
