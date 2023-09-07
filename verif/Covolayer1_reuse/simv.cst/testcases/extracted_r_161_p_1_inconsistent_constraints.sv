class c_161_1;
    integer i = -159;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_161_1;
    c_161_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1011x111001x00x010zz111zz01xxxzxxxxzxzzzzzxzzxxzzzxzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
