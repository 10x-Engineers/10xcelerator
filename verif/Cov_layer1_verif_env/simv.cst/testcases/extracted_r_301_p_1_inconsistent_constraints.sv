class c_301_1;
    integer i = -299;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_301_1;
    c_301_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxz010z1x0x1x1xzzxz01z0011xx10zxzxzzzzxxxzxzxzzxzxzzxxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
