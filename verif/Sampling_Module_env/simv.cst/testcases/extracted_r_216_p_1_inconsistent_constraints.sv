class c_216_1;
    integer i = 216;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_216_1;
    c_216_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz00xx1x01x0x110x00z00zx10z0zzxzzxxzzxzzzxxzzxzzxzxxxzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
