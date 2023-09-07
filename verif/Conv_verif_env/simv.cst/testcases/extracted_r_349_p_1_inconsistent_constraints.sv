class c_349_1;
    integer i = 349;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_349_1;
    c_349_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz01z00010x1101xx0xzxxz0xxx1xx1xxzxxzzzzzxxzzxxxxxzzxzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
