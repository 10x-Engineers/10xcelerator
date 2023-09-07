class c_602_1;
    integer i = 602;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_602_1;
    c_602_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zxz0100zzxxzxx0xx11x1001z0100zzxzzxzxzzxzxxxzxxzxxxxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
