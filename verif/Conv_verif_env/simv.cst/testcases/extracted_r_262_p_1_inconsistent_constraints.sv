class c_262_1;
    integer i = 262;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_262_1;
    c_262_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzz111z0x00zxzx11110x01z0zxzx1zzzxxzxxzxzzxxzzzxxxxxxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
