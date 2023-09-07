class c_206_1;
    integer i = 206;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_206_1;
    c_206_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00z0xxzz0xz00011z10011zz01xz1xxxxzxzxzzzzzxzzzxxxxzxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
