class c_731_1;
    integer i = -729;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_731_1;
    c_731_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx01z0zxz00z011xxz0xxxxxx01xx01xzxzzxzxzzzxxzzzxzxzzzxxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
