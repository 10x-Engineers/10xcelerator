class c_633_1;
    integer i = 633;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_633_1;
    c_633_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzz0101x00010x1x10zxxz1zzxzz10xxzxxzzzxzzxxzxxzxzxzzzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram