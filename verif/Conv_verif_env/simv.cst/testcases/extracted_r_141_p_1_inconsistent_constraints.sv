class c_141_1;
    integer i = 141;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_141_1;
    c_141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx0zz11010101zz0110zz1zx0zxxz0xzxxxxxzxzzzzzzzzzxxxxxxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
