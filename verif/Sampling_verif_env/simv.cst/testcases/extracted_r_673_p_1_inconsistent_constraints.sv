class c_673_1;
    integer i = 673;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_673_1;
    c_673_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100x01zxxxz01x1zx0xzzxx00z1zxxzxzzzxzzzxxxxxxxxzxxzxxzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
