class c_290_1;
    integer i = -288;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_290_1;
    c_290_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0zx11zz0zxxx0z0z0z0zzzxxzz01zzzxxxzxzxxxzxxxzxzzzxzxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
