class c_170_1;
    integer i = 170;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_170_1;
    c_170_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z001xxx0x1z1011x1zxz1xzz1xzxx0xzxzzzxxzzxxzzzzxxzxzxxxxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
