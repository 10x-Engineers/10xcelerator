class c_396_1;
    integer i = 396;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_396_1;
    c_396_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz1xxx0zz00100x0x1xz001x1xx00xxzxzxxxxxzzzzzxzzzxzxxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
