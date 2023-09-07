class c_538_1;
    integer i = 538;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_538_1;
    c_538_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00xz100zx00zzz01x1z0zx0zxz01z0zxzzzzxxxxxzzzzzzzzxxzxxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
