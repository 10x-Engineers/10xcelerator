class c_645_1;
    integer i = 645;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_645_1;
    c_645_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zx10z0x0zx1z1zxz1z1111xz01z0xxxzxxzxzxzxzzzxxzxxzzxzxzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
