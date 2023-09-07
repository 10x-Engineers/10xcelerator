class c_458_1;
    integer i = -456;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_458_1;
    c_458_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0001xzx110011xzzzz0z11xz1zzz0xxxxzxxxzxxzzxxzxzzxzzxzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
