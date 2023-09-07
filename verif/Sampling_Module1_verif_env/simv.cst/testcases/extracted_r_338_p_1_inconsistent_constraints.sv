class c_338_1;
    integer i = 338;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_338_1;
    c_338_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1zz1x0101z1zz00zz01xxx110x10zxxxzxzzxzzzzzxzxxzxzxxzzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
