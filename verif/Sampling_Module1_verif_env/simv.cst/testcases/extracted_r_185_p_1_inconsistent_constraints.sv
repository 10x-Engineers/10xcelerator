class c_185_1;
    integer i = 185;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_185_1;
    c_185_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01011100000zxz110z10zzz1xz0xzxxxxxzxzxzxxxzzzxxxzzzzxxxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
