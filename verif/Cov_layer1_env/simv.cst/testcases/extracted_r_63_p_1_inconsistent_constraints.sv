class c_63_1;
    integer i = -61;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_63_1;
    c_63_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11110x00z0x0z0x0z01110100z111000zxzzxxzxzxzxzzxzxxzzzzxxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
