class c_116_1;
    integer i = 116;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_116_1;
    c_116_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx001xz1xz10xzx01x111x0x00xxx0xxxzzzzzzxzxzzzzxzxxxxzxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
