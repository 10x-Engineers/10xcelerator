class c_101_1;
    integer i = 101;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_101_1;
    c_101_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zzzx11xx0010x010101zzxx0001x0zzxzxxzxxxzzzxxzxxxxzxzxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
