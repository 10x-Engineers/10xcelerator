class c_122_1;
    integer i = 122;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_122_1;
    c_122_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xxz0xxz100x1011xz1x01z00z0zxxzxxxzxzzzzzzzxxxxzzzzzxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
