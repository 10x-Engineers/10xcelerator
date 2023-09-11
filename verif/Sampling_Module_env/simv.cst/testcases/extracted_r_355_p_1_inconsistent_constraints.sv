class c_355_1;
    integer i = 355;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_355_1;
    c_355_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1100z01xxx1z1x1xx0xz1x010xxx0zzxxzzxzzxxxxzxxxxzzxzzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
