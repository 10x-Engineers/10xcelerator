class c_437_1;
    integer i = 437;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_437_1;
    c_437_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz101z0z00xzz1z1zx0zz011zz10zx1zxxxxxxzzxzzxzzxxxxxzxxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
