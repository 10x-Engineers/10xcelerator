class c_111_1;
    integer i = 111;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_111_1;
    c_111_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x0101010z0100010xx00x0z01xx0zzzxzzxxxzxzxxxzzzzzxzzzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
