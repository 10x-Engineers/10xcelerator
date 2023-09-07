class c_400_1;
    integer i = 400;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_400_1;
    c_400_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0zx0x0111zz0z00z0x0x0z0zx0zzxzzzzxzzzzxxxxxxxxxzxxxxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
