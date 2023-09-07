class c_256_1;
    integer i = 256;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_256_1;
    c_256_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z111z1x0xx10x0x1zzzx1x0000x0zzxzxxxxzxzxzxxzxxzxzzzxzzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
