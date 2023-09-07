class c_719_1;
    integer i = 719;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_719_1;
    c_719_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzx0z0xzzzx0x1xx10xx01xx00z0xzxzzzxzxxxxzxzzzxzxzzxzxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
