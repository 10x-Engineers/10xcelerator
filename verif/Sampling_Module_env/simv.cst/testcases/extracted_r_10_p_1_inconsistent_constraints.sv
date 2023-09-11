class c_10_1;
    integer i = 10;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_10_1;
    c_10_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110x1x11x10010x0zx01z10xz1xz0z0xxxzxzxxxzzxzzzxxxxxzzxzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
