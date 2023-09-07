class c_514_1;
    integer i = 514;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_514_1;
    c_514_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0010xzxxx01zxz1x000xzz0z001xzxzzzxxzxzzxxzzxxxzzxzxxzzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
