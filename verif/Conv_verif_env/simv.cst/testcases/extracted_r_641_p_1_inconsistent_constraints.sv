class c_641_1;
    integer i = 641;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_641_1;
    c_641_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz00z0xx0zz11x1xz1xz1zxx0x0z00zzxzxzxzzzzxzxxxzxxxxzzxxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
