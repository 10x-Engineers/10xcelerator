class c_353_1;
    integer i = 353;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_353_1;
    c_353_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01zzzxx11xzxxx11xzzz1xzz0zz10xxzzzzzxxzzzxzxxxxzxxxxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
