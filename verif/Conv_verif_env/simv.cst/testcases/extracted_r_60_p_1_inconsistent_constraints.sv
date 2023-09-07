class c_60_1;
    integer i = 60;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_60_1;
    c_60_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx1x10z10100zxx0x011z1111z1xz0zxxxxzxxzzxzxzzzzxxzxzxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
