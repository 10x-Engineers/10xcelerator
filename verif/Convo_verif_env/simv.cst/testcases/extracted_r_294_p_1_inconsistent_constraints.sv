class c_294_1;
    integer i = 294;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_294_1;
    c_294_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z01x1x00100110zx010001z0zz0x0zxzxzxxxzzzzxxzxxzxxzzxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
