class c_300_1;
    integer i = 300;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_300_1;
    c_300_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xx0z1zx11z0xz1xxzxx10110zzzxxxxxzzzxxzzxzxxzzzzxzzxxxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
