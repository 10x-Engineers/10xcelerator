class c_25_1;
    integer i = -23;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_25_1;
    c_25_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z1z1xz101z111x010xx1z1xx0zxxzzxxzzzzzzxzzzxzxxzzxzzzxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
