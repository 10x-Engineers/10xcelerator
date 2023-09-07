class c_258_1;
    integer i = -256;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_258_1;
    c_258_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01x1x1x1z1xzx0z01z0xxxzxzzzz0xxxzxzzxzxzxxzxxxxxxzzxzxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
