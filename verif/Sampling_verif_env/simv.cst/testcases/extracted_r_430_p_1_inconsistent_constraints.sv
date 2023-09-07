class c_430_1;
    integer i = 430;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_430_1;
    c_430_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x0z010z010000xzzx1xx1110x0z1xzxxzzzzxzxzxxzxxzxxzxxzxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
