class c_428_1;
    integer i = -426;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_428_1;
    c_428_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z1zzzx00z011xzzzzxx1x0zzzx0z1zzxxzxxzzzxzzxxzxzxxxxzxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
