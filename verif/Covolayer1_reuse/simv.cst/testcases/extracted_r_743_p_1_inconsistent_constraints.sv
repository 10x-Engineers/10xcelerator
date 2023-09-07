class c_743_1;
    integer i = -741;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_743_1;
    c_743_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00010x1xxxz1x0zzx01zx1xz0xxzxxzzzxzzxzzxxzzzxzzxzxxzxzzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
