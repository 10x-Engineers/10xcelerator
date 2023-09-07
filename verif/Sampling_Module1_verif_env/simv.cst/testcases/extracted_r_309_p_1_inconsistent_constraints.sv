class c_309_1;
    integer i = 309;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_309_1;
    c_309_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0zx0zxxx0z10xzxxzxxzxz00zx11xzzxzxzzxxzxzzxzxzxzxxzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
