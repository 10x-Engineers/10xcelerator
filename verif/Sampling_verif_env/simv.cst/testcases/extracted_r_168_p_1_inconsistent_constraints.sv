class c_168_1;
    integer i = 168;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_168_1;
    c_168_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x0010010zx0x10x111zzxz0001000zzzxxxzxxzzzzzzzxxxzzxxxxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
