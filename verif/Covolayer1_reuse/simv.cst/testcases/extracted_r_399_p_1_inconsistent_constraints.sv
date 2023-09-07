class c_399_1;
    integer i = -397;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_399_1;
    c_399_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xx0xxzz0zx101xzzxz1x0xzz1xxzzxxzzxxzzxxxxzxzxxxzxzzxzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram