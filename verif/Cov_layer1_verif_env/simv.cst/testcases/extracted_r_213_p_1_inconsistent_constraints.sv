class c_213_1;
    integer i = -211;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_213_1;
    c_213_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xxx1xx10z0z001x0010xzz1xx1xzzxzxzzzzxxxzxxzzzxxxxxxxxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
