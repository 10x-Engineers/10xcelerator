class c_302_1;
    integer i = 302;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_302_1;
    c_302_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zxx0zxxz0x1zx01z00zz00x01x1x1xzzxxxxzzzzxxxxzzxxzzzxzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
