class c_549_1;
    integer i = 549;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_549_1;
    c_549_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxxxz110x0z10z1zzzx11x0zz0110zxxxxxzxzxzzxxxzxzzzzxzzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
