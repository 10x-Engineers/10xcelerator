class c_33_1;
    integer i = 33;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_33_1;
    c_33_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzz0xxz1zzzz00xx01xzx01xx0xzx1zxxzzzzxzzzxxxzzxzzxzzzxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
