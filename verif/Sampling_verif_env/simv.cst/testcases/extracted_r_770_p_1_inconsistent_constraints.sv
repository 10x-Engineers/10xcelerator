class c_770_1;
    integer i = 770;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_770_1;
    c_770_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z1xzx11z10z0xx1xx010zxz110xzzxzzzxzxzxzxxzxzzxxzxxzxxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
