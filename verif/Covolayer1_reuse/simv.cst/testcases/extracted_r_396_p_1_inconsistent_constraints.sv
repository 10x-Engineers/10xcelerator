class c_396_1;
    integer i = -394;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_396_1;
    c_396_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1zxxz11zz0x01z11zx100xxxxxzx0xzzzzzzxzzxxzzxxzzzzzzzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
