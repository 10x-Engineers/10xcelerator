class c_12_1;
    integer i = -10;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_12_1;
    c_12_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz1z1z0001xx1zz00z11zz00zzzxzzxxxxxxxxzxxzzxzzzzxzxxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
