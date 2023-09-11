class c_250_1;
    integer i = -248;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_250_1;
    c_250_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z0z1zz010x1zz11zzzxx1zz1011z1xxxxxzxxzzxzxxzzzzxzzxxzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
