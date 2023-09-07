class c_337_1;
    integer i = -335;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_337_1;
    c_337_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xxz01zxzz111101xxx001xz1xz0x1zzzxxzzzxxxxxzzxzzzxzxzxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
