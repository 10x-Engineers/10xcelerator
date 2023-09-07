class c_6_1;
    integer i = -4;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_6_1;
    c_6_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111xx1xxz1xxx10x0zxzxzzzz0zx1x0zxxxxzxzxxzzxzxxxzzxxzzxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
