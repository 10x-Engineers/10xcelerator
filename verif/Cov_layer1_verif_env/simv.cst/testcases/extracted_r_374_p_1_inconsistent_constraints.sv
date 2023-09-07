class c_374_1;
    integer i = -372;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_374_1;
    c_374_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zx1zz1xxzzzz1x1001x01z0xx1zxxzxzxxzxxzxxzzzzzxxxxxzzzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
