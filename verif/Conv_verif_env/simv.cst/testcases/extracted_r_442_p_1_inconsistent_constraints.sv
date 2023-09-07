class c_442_1;
    integer i = 442;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_442_1;
    c_442_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x0zz01111zxzzxzx010xx0zzx0x1xxzxzxzzxxzzzxxxxzxzxxzzzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
