class c_245_1;
    integer i = 245;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_245_1;
    c_245_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzzzx0x110zx11xx0000z1x0z0xzx1zxxxxxxzxzzzxzxxxxzxxzxxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
