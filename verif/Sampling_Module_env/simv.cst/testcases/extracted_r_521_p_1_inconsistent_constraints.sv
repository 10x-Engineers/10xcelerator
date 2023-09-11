class c_521_1;
    integer i = 521;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_521_1;
    c_521_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11zxz1xx1zx11x101x1xzzz1z0zx1xzzzxzxzxxzxzzxxzzzxzxzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram