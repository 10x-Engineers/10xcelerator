class c_143_1;
    integer i = -141;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_143_1;
    c_143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000z11zz11x00011z0zxx11xzz0xzzxxxxxxxxzzxzxxxzzzxzxzzzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
