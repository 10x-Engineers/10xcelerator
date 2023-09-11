class c_670_1;
    integer i = -668;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_670_1;
    c_670_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1xz110xzx1x1x0110x1xzz11100xxxxzzxzzxzzzxzxzzzzzzzxxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
