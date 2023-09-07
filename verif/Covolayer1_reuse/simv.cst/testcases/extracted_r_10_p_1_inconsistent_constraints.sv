class c_10_1;
    integer i = -8;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_10_1;
    c_10_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxx1x0001x1z0zxzxx0z1000z0xz00zzxzxxxxzxxzzxxzzzxzzzzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
