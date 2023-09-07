class c_371_1;
    integer i = -369;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_371_1;
    c_371_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1xx000zx110xzx11zxxz01z0zzxx1xzzxxzzzzzzzzzxxzxzzzxzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
