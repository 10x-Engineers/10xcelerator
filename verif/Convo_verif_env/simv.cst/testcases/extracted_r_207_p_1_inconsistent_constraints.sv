class c_207_1;
    integer i = 207;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_207_1;
    c_207_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz00z1zz111xxz0xz11z1zz000x1xxxzxxxzzzxzxzxxzzxxxxxxzxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
