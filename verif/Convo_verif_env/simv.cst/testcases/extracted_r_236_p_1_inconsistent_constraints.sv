class c_236_1;
    integer i = 236;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_236_1;
    c_236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxx1zzxz11xx0zxxzxx00xzzzzxx00zxzzzxzxzxzzzzzzzzxxzxzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
