class c_367_1;
    integer i = -365;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_367_1;
    c_367_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx011xzxxx1z011zz1x0zz11101x00xxxxzxxzzzzzzxzxxxxxxzxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
