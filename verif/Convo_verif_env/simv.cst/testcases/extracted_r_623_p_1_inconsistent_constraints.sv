class c_623_1;
    integer i = 623;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_623_1;
    c_623_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zx01xxz0xzx0zxx001110zx01xz1xzzxzxxxxzxxzxzzxzxzzzxzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
