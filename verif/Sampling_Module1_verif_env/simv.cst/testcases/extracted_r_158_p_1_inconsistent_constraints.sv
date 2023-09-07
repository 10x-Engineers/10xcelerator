class c_158_1;
    integer i = 158;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_158_1;
    c_158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz010xx0xxxx0x101z0xxz0zx0x10xxxzzxzxzzzzzxzxzzxxxzzxxxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
