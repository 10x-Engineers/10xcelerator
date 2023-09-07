class c_70_1;
    integer i = 70;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_70_1;
    c_70_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxx0xzzxx0zxz1x1xxx01z0zzzzz01xxxzxzzzzzzxzxzzxxzzzzzxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
