class c_772_1;
    integer i = -770;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_772_1;
    c_772_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zzzxx1xzzz00z1x0010010zz111z1xzzxxxzxxzxzzxxzzxxzzzzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
