class c_572_1;
    integer i = 572;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_572_1;
    c_572_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzz0x001x0z01z1z00xxxx10zz0zz0zzzxxxzzxzxxxzxzzzxzzxzxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
