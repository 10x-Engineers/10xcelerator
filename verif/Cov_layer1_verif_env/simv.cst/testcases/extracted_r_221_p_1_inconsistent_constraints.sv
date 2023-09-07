class c_221_1;
    integer i = -219;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_221_1;
    c_221_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx11x00x10z11zx1010xx1zx0z011xzxxzzxzzxxzzzxxxxzzxxzxxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
