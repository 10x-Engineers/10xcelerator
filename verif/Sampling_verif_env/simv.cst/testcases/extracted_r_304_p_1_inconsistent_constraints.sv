class c_304_1;
    integer i = 304;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_304_1;
    c_304_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1xzx1xx0x1z1xxz0z0zx11z1xzz11xzxxzzzxxzzzxzxzzzxxzzzxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
