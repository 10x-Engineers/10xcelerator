class c_615_1;
    integer i = -613;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_615_1;
    c_615_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxx1xzzzz0xzzz0xx00x0x11xzxzz0zxzxzxxxxxzxxxxxxxxzzxxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
