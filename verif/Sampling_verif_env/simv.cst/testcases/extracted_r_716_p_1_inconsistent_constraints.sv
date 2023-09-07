class c_716_1;
    integer i = 716;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_716_1;
    c_716_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x0zx1zz011xx0xx1x0zz0xx0xz0z1zzzxzzzzzxxzzxxzxxxzzxxxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
