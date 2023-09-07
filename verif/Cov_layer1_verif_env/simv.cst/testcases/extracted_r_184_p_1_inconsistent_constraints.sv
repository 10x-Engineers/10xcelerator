class c_184_1;
    integer i = -182;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_184_1;
    c_184_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10zxx1z0x01z11xxx0z1z00xx11zzxxxzxxzxxxzzzzzzxzxzxzzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
