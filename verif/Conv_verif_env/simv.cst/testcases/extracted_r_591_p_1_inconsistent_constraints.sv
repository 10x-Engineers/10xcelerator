class c_591_1;
    integer i = 591;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_591_1;
    c_591_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001z00xz011zx11z0xx0010xxx0x1z0xzzxzxxzzzxxxzxzxxzxzzxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
