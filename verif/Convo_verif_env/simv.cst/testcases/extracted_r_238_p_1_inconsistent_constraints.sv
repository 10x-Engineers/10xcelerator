class c_238_1;
    integer i = 238;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_238_1;
    c_238_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1000xzx100zxx111zz01z01x0z00xxxxzxzzxxzxxxxxxxxxxzzxxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
