class c_595_1;
    integer i = -593;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_595_1;
    c_595_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00zxxz0xx00z101z10z1x0xxxxz010zzxzxzzzzxzxzxxzxzxxxzxzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
