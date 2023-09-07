class c_85_1;
    integer i = -83;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_85_1;
    c_85_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1x111011x111xzzx1101zz11x0zz1xzzzzxxzxzzxxxxzzzzxzzzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
