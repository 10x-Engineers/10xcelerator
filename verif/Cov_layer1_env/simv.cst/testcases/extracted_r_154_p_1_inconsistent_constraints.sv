class c_154_1;
    integer i = -152;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_154_1;
    c_154_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001xzzz1zxxx000zxz01xx1x1110x1xxzxxxxzxzzxxzzxzzxzxxzxxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
