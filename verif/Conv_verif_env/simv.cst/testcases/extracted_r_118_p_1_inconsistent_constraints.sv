class c_118_1;
    integer i = 118;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_118_1;
    c_118_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010z011x1xx01z11x1zxx0x01zx0000xxzxxxzxzzxzxzzxzxxzxxxzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
