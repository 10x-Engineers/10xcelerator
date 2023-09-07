class c_689_1;
    integer i = 689;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_689_1;
    c_689_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z10xz1xx0x011011100111zz10x1zzxxzxxxzxxxzzxxxzxzzzzxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
