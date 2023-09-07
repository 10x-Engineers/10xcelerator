class c_365_1;
    integer i = -363;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_365_1;
    c_365_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101zxz1011z0zxzzxzz0z111010xzzzzxzxxxzxzzxzxxxxzxxxxzzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
