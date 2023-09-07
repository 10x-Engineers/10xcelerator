class c_637_1;
    integer i = -635;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_637_1;
    c_637_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzz11x0101x10110111xxz0001z1xzzzxxxzzxxzzzzxzzxzzzzxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
