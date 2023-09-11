class c_449_1;
    integer i = -447;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_449_1;
    c_449_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1x0zx1zx1zzz10zzxxx01z0zx1x00xzxxzxxxxxzzxxxxzxzzxzzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
