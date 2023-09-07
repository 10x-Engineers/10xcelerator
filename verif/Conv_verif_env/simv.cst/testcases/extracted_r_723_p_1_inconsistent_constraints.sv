class c_723_1;
    integer i = 723;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_723_1;
    c_723_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz010xx11zx1xxxzzz10zxx10z111xxzxxzzzxxzzxxzxxzzxzxxzxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
