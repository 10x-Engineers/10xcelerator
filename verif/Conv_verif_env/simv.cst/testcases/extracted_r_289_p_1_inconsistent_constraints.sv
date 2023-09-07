class c_289_1;
    integer i = 289;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_289_1;
    c_289_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x010xx0xz0x1xzxx0x0zzz0zz1xzz1zxxxxxxzxxxxzzxxzxxzxzxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
