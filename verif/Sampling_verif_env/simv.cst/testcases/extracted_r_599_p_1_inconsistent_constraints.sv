class c_599_1;
    integer i = 599;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_599_1;
    c_599_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0x1zz00z01z1x0xz0zz0zxz0x1xx1zxzzzzzxzxzxxzxxxzxxzxzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
