class c_399_1;
    integer i = 399;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_399_1;
    c_399_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x0zzxz0zz1100xxx110xxxx00x100xzxxxxzxxxxxzxzxxzxzxzzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
