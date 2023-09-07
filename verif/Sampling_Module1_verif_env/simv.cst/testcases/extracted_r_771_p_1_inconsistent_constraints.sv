class c_771_1;
    integer i = 771;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_771_1;
    c_771_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zx01zxxx0zx11xxz10z00x1x0x0z1zzzzxzzxxzzxxxzxxzxxxxzxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
