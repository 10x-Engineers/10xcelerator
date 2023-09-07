class c_354_1;
    integer i = 354;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_354_1;
    c_354_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1xxz110z0x0x1zzxx0z0z0z10100zxzxxzzxzxxxxzzzxxxxzxxzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
