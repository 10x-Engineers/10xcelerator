class c_149_1;
    integer i = 149;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_149_1;
    c_149_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zx1zzx010zzz11011zxx01101x0x1zxzzxzxzzzzzzxxxzxzzxzzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
