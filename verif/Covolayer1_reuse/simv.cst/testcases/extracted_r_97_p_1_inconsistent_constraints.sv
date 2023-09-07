class c_97_1;
    integer i = -95;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_97_1;
    c_97_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x1x1z0zxxz11011x00z11101x1100xzxzxxxxzxxzzzxzxxzzzzzzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
