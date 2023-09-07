class c_11_1;
    integer i = 11;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_11_1;
    c_11_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z010xx0011zzx0z0z10x0z1101z0xzxzzzzzzzxxzzxzzxzxzxxxxzxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
