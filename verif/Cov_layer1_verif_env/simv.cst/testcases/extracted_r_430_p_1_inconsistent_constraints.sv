class c_430_1;
    integer i = -428;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_430_1;
    c_430_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xz011xzx10z0zx01z01x0zxz0xz0zzxzxxxzzzzxzzzxxzzzxzxxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
