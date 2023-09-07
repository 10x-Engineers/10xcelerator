class c_781_1;
    integer i = -779;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_781_1;
    c_781_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x111zzz1zxxx10x0x1xz11z010x1xzxzzxxxxxxzxzxxzzzzzzzzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
