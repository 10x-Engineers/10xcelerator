class c_765_1;
    integer i = 765;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_765_1;
    c_765_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00x1z001x11z11z01x10x10zxx01x0xzxxxzzxzzzzzzzzzzxzxxxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
