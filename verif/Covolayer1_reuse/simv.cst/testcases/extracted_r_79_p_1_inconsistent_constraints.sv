class c_79_1;
    integer i = -77;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_79_1;
    c_79_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx1zz10xx01z11z010zzx1zz01xz00xxzxzzxzzzzzzxzzxzzzzzxxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
