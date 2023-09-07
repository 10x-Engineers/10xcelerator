class c_109_1;
    integer i = -107;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_109_1;
    c_109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x1x111100xzzxxx110z0z0xx1xzxzxzxzzzzzxzzxzxzxzxzxzzzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
