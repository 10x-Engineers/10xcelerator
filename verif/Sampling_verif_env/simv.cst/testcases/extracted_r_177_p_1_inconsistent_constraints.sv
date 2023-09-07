class c_177_1;
    integer i = 177;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_177_1;
    c_177_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxx0z0000x1xzxzz1x1zz0x010x0xzzxzxzxxzzzzxzxzzzzzxzxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
