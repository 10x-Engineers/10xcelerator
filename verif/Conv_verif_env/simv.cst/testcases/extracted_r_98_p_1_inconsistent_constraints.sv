class c_98_1;
    integer i = 98;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_98_1;
    c_98_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzx1x0z1xxzzxz1xxx11x1z000001zzzxzxxzxxzzzzzxxzxzzxzxxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
