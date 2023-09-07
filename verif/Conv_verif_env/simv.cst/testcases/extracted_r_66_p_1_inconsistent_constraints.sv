class c_66_1;
    integer i = 66;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_66_1;
    c_66_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zxx1z0x1xz10zx0z1x0x11xx01z1xxzxzxxzzzzzxzzzxxxxzzzxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
