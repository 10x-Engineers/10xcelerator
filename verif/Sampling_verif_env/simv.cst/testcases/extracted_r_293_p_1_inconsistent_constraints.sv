class c_293_1;
    integer i = 293;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_293_1;
    c_293_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x01z10xzz100101zxxxx11x1x1110xxxxxxzxzxxzxxzzzxzzzxxzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
