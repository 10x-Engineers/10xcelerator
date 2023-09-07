class c_343_1;
    integer i = 343;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_343_1;
    c_343_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1z00z01x0z1zzx1zxz0x0xxx0zz1zzzxxxxzzzxzxzxxxzzxzxxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
